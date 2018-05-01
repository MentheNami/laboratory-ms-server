package org.cqtguniversity.lqms.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.ConfigOptionDetail;

import java.util.Date;
import java.util.Map;

/**
 * <p>
  * 配置选项详情 Mapper 接口
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface ConfigOptionDetailMapper extends BaseMapper<ConfigOptionDetail> {

    void addUseCountById(@Param("id") Long id, @Param("gmtModified") Date gmtModified);

    void addUseCountByIds(@Param("optionIdsMap") Map<Long, Long> optionIdsMap, @Param("gmtModified") Date gmtModified);

    void removeUseCountById(@Param("id") Long id, @Param("gmtModified") Date gmtModified);

    void removeUseCountByIds(@Param("optionIdsMap") Map<Long, Long> optionIdsMap, @Param("gmtModified") Date gmtModified);

}