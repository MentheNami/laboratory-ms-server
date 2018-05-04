package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.AttachedFile;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.file.SaveAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 * 文件表 服务类
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-04
 */
public interface AttachedFileService extends IService<AttachedFile> {

    BaseVO uploadAttachedFile(MultipartFile multipartFile, SaveAttachedFileDTO saveAttachedFileDTO);
}
