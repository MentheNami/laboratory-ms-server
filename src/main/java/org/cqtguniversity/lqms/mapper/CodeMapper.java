package org.cqtguniversity.lqms.mapper;

import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.Code;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
  * 验证码表 Mapper 接口
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-07
 */
@Repository
public interface CodeMapper extends BaseMapper<Code> {

    Code useCode(@Param("cellPhone") String cellPhone, @Param("code") String code);

}