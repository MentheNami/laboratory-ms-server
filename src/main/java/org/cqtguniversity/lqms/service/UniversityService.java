package org.cqtguniversity.lqms.service;

import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.entity.University;
import org.cqtguniversity.lqms.pojo.dto.university.UniversityDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 *  大学服务类
 * @author TangShengYu
 * @since 2018-05-13
 */
public interface UniversityService extends IService<University> {

    // 通过id 获取大学DTO
    UniversityDTO getUniversityDTO(Long id);

    BaseVO getUniversityList(Long provinceId);

}
