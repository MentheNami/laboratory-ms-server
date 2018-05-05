package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.UserInfo;
import org.cqtguniversity.lqms.entity.UserNode;
import org.cqtguniversity.lqms.mapper.UserNodeMapper;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;

/**
 * <p>
 * 用户节点表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Service
public class UserNodeServiceImpl extends ServiceImpl<UserNodeMapper, UserNode> implements UserNodeService {

    private final UserInfoService userInfoService;

    @Autowired
    public UserNodeServiceImpl(UserInfoService userInfoService) {
        this.userInfoService = userInfoService;
    }

    @Override
    public void getUserNode(String cellPhone, Long userAccountId) {
        UserNode userNode = new UserNode();
        // 默认没有部门
        userNode.setDepartmentId(0L);
        Calendar calendar = Calendar.getInstance();
        userNode.setGmtCreate(calendar.getTime());
        userNode.setGmtModified(calendar.getTime());
        userNode.setInfoId(userInfoService.getUserInfo(cellPhone));
        // 2代表普通用户（游客）
        userNode.setRoleId(2L);
        userNode.setUserId(userAccountId);
        userNode.insert();
    }
}
