package org.cqtguniversity.lqms.mapper;

import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.UserAccount;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.cqtguniversity.lqms.entity.UserInfo;
import org.springframework.stereotype.Repository;

/**
 * <p>
  * 用户账户表 Mapper 接口
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Repository
public interface UserAccountMapper extends BaseMapper<UserAccount> {

    UserAccount selectByUserName(@Param("userName") String userName);

}