package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.construct.NumTypeConstruct;
import org.cqtguniversity.lqms.entity.AttachedFile;
import org.cqtguniversity.lqms.mapper.AttachedFileMapper;
import org.cqtguniversity.lqms.pojo.dto.file.SaveAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.service.AttachedFileService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

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

    @Value("${file.uploadAndDownload.pathHead}")
    private String pathHead;

    @Autowired
    public AttachedFileServiceImpl(AttachedFileMapper attachedFileMapper, NumberRuleService numberRuleService) {
        this.attachedFileMapper = attachedFileMapper;
        this.numberRuleService = numberRuleService;
    }

    @Override
    public BaseVO uploadAttachedFile(MultipartFile multipartFile, SaveAttachedFileDTO saveAttachedFileDTO) {
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
            attachedFile.setFileType(saveAttachedFileDTO.getFileType());
            attachedFile.setFileNo(numberRuleService.getNum(NumTypeConstruct.FILENO, ConfigOptionConstruct.getOptionById(saveAttachedFileDTO.getFileType()).getValue()));
            attachedFileMapper.insert(attachedFile);
            return new DetailResultVO(null);
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
            return new ErrorVO("文件删除错误");
        }

    }
}
