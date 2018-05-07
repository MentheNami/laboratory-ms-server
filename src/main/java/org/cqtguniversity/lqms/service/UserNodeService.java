package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.UserNode;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.UserInfoVO;

/**
 * <p>
 * 用户节点表 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
public interface UserNodeService extends IService<UserNode> {

    void getUserNode(String cellPhone, Long userAccountId);

    UserNodeDTO selectByUserAccountId(Long userAccountID);

}
