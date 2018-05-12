package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.cqtguniversity.lqms.construct.NumTypeConstruct;
import org.cqtguniversity.lqms.entity.AttachedFile;
import org.cqtguniversity.lqms.mapper.AttachedFileMapper;
import org.cqtguniversity.lqms.pojo.dto.file.SaveAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.dto.file.SearchAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.file.SimpleAttachedFileVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.SessionUserVO;
import org.cqtguniversity.lqms.service.AttachedFileService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * <p>
 * 文件表 服务实现类
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-04
 */
@Service
public class AttachedFileServiceImpl extends ServiceImpl<AttachedFileMapper, AttachedFile> implements AttachedFileService {

    private final AttachedFileMapper attachedFileMapper;

    private final NumberRuleService numberRuleService;

    @Autowired
    private UserInfoService userInfoService;

    @Value("${file.uploadAndDownload.pathHead}")
    private String pathHead;

    @Autowired
    public AttachedFileServiceImpl(AttachedFileMapper attachedFileMapper, NumberRuleService numberRuleService) {
        this.attachedFileMapper = attachedFileMapper;
        this.numberRuleService = numberRuleService;
    }

    /**
     * 翻译文件信息
     * @param attachedFile 文件实体
     * @return 文件VO
     */
    private SimpleAttachedFileVO transferSimpleAttachedFileVO(AttachedFile attachedFile) {
        SimpleAttachedFileVO simpleAttachedFileVO = new SimpleAttachedFileVO();
        simpleAttachedFileVO.setId(attachedFile.getId());
        simpleAttachedFileVO.setFileName(attachedFile.getFileName() + attachedFile.getFileExtension());
        simpleAttachedFileVO.setFileNo(attachedFile.getFileNo());
        simpleAttachedFileVO.setFileType(ConfigOptionConstruct.getOptionById(attachedFile.getFileType()).getKey());
        simpleAttachedFileVO.setGmtCreate(MyDateUtil.simpleDateFormat(attachedFile.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        simpleAttachedFileVO.setUploadedBy(userInfoService.selectUserInfoDTO(attachedFile.getUploadedBy()).getRealName());
        return simpleAttachedFileVO;
    }

    @Override
    public BaseVO getAttachedFileList(SearchAttachedFileDTO searchAttachedFileDTO) {
        if (!searchAttachedFileDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<AttachedFile> entityWrapper = new EntityWrapper<>();
        if (!StringUtils.isEmpty(searchAttachedFileDTO.getFileNo())) {
            entityWrapper.like("file_no", searchAttachedFileDTO.getFileNo());
        }
        if (!StringUtils.isEmpty(searchAttachedFileDTO.getFileName())) {
            entityWrapper.like("file_name", searchAttachedFileDTO.getFileName());
        }
        if (!StringUtils.isEmpty(searchAttachedFileDTO.getUploadedBy())) {
            List<Long> userIds = userInfoService.selectIdsByRealName(searchAttachedFileDTO.getUploadedBy());
            entityWrapper.in("uploaded_by", userIds);
        }
        if (null != searchAttachedFileDTO.getFileType()) {
            entityWrapper.where("file_type={0}", searchAttachedFileDTO.getFileType());
        }
        int total = attachedFileMapper.selectCount(entityWrapper);
        Page page = new Page(searchAttachedFileDTO.getPage(), searchAttachedFileDTO.getRows());
        if (0 != total) {
            entityWrapper.orderBy("gmt_modified");
            List<AttachedFile> attachedFileList = attachedFileMapper.selectPage(page, entityWrapper);
            if (null != attachedFileList && 0 != attachedFileList.size()) {
                List<SimpleAttachedFileVO> simpleAttachedFileVOList = attachedFileList.stream().map(this::transferSimpleAttachedFileVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleAttachedFileVOList);
            }
        }
        return new ListVO<>(0, page, new ArrayList<>());
    }

    @Override
    public BaseVO uploadAttachedFile(MultipartFile multipartFile, SaveAttachedFileDTO saveAttachedFileDTO, HttpSession httpSession) {
        SessionUserVO sessionUserVO = (SessionUserVO) httpSession.getAttribute("sessionUserVO");
        if (null == sessionUserVO) {
            return new ErrorVO("用户未登陆");
        }
        // 获取上传文件的名字（包括后缀名）
        String fileName = multipartFile.getOriginalFilename();
        assert fileName != null;
        // 截取文件名字 (第一个字符到最后一个“.”之前)
        String name = fileName.substring(0, fileName.lastIndexOf("."));
        // 截取文件类型（即）后缀名，包括“.”
        String extension = fileName.substring(fileName.lastIndexOf(".") + 1);

        // 创建一个文件对象实体类
        AttachedFile attachedFile = new AttachedFile();
        // 设置文件名
        attachedFile.setFileName(name);
        // 设置系统中文件夹路径， 根据日期分文件夹
        Calendar calendar = Calendar.getInstance();
        String directory = calendar.get(Calendar.YEAR) + "\\" + calendar.get(Calendar.MONTH) + "\\" + calendar.get(Calendar.DAY_OF_MONTH) + "\\";
        // 生成一个UUID作为系统文件名称
        UUID uuid = UUID.randomUUID();
        // 设置数据库文件路径
        String filePath = directory + uuid + "." + extension;
        attachedFile.setFilePath(filePath);
        // 文件存在的物理路径
        filePath = pathHead + filePath;
        // 存储文件
        File dest = new File(filePath);

        // 判断文件目录是否存在
        if (!dest.getParentFile().exists()) {
            // 创建父目录
            dest.getParentFile().mkdirs();
        }

        try {
            // 保存文件
            multipartFile.transferTo(dest);
            attachedFile.setGmtCreate(calendar.getTime());
            attachedFile.setGmtModified(calendar.getTime());
            attachedFile.setFileExtension(extension);
            attachedFile.setUploadedBy(sessionUserVO.getUserInfoId());
            attachedFile.setFileType(saveAttachedFileDTO.getFileType());
            attachedFile.setFileNo(numberRuleService.getNum(NumTypeConstruct.FILENO, ConfigOptionConstruct.getOptionById(saveAttachedFileDTO.getFileType()).getValue()));
            attachedFileMapper.insert(attachedFile);
            return new DetailResultVO(null);
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
            return new ErrorVO("文件删除错误");
        }

    }

    @Override
    public ResponseEntity<InputStreamResource> downloadFile(Long id) throws IOException {
        AttachedFile attachedFile = attachedFileMapper.selectById(id);
        if (null == attachedFile) {
            return null;
        }
        String filePath = pathHead + attachedFile.getFilePath();
        String fileName = attachedFile.getFileName() + "." + attachedFile.getFileExtension();
        FileSystemResource file = new FileSystemResource(filePath);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
        headers.add("Content-Disposition", String.format("attachment; filename=%s", new String(fileName.getBytes("UTF-8"), "ISO-8859-1")));
        headers.add("Pragma", "no-cache");
        headers.add("Expires", "0");
        return ResponseEntity
                .ok()
                .headers(headers)
                .contentLength(file.contentLength())
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .body(new InputStreamResource(file.getInputStream()));
    }
}
