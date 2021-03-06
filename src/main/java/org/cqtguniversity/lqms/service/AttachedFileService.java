package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.AttachedFile;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.file.SaveAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.dto.file.SearchAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * <p>
 * 文件表 服务类
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-04
 */
public interface AttachedFileService extends IService<AttachedFile> {

    BaseVO getAttachedFileList(SearchAttachedFileDTO searchAttachedFileDTO);

    BaseVO uploadAttachedFile(MultipartFile multipartFile, SaveAttachedFileDTO saveAttachedFileDTO, HttpSession httpSession);

    ResponseEntity<InputStreamResource> downloadFile(Long id) throws IOException;

    BaseVO removeById(Long id);

}
