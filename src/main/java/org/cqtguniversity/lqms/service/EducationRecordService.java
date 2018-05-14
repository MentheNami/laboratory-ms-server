package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.EducationRecord;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * <p>
 * 人员学历及学位记录 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface EducationRecordService extends IService<EducationRecord> {

    BaseVO addEducationRecord(SaveEducationRecordDTO saveEducationRecordDTO);

    BaseVO updateEducationRecord(SaveEducationRecordDTO saveEducationRecordDTO);

    BaseVO selectById(Long id);

}
