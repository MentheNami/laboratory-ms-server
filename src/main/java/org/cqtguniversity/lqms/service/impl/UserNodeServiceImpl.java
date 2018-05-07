package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.UserInfo;
import org.cqtguniversity.lqms.entity.UserNode;
import org.cqtguniversity.lqms.mapper.UserNodeMapper;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

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

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private UserNodeMapper userNodeMapper;

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

    @Override
    public UserNodeDTO selectByUserAccountId(Long userAccountID) {
        Assert.notNull(userAccountID, "userAccountID must is not null");
        UserNode userNode = userNodeMapper.selectByUserId(userAccountID);
        if (null == userNode) {
            System.out.println("存在错误的user_id :" + userAccountID + ", 请检查用户节点表");
            return null;
        }
        UserNodeDTO userNodeDTO = new UserNodeDTO();
        BeanUtils.copyProperties(userNode, userNodeDTO);
        return userNodeDTO;
    }
}
