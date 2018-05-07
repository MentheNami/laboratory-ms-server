package org.cqtguniversity.lqms.mapper;

import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.UserInfo;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
  * 用户表 Mapper 接口
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Repository
public interface UserInfoMapper extends BaseMapper<UserInfo> {

    UserInfo selectByRealName(@Param("realName") String realName);

}