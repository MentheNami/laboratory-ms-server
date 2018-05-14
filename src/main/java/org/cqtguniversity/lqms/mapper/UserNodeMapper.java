package org.cqtguniversity.lqms.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.cqtguniversity.lqms.entity.UserNode;
import org.springframework.stereotype.Repository;

/**
  * 用户节点表 Mapper 接口
 * @author TangShengYu
 * @since 2018-05-01
 */
@Repository
public interface UserNodeMapper extends BaseMapper<UserNode> {

    // 通过账户id获取用户节点
    UserNode selectByUserId(@Param("userId") Long userId);

    // 通过信息id获取用户节点
    UserNode selectByInfoId(@Param("infoId") Long infoId);

}