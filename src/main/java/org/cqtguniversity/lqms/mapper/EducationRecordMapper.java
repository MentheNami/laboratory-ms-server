package org.cqtguniversity.lqms.mapper;

import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.EducationRecord;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
  * 人员学历及学位记录 Mapper 接口
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Repository
public interface EducationRecordMapper extends BaseMapper<EducationRecord> {

    EducationRecord selectByUserId(@Param("userId") Long userId);

}