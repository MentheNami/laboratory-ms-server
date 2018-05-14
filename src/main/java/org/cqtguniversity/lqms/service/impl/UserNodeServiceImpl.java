package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.UserInfo;
import org.cqtguniversity.lqms.entity.UserNode;
import org.cqtguniversity.lqms.mapper.UserNodeMapper;
import org.cqtguniversity.lqms.pojo.dto.usernode.SaveUserNodeDTO;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 用户节点表 服务实现类
 * @author TangShengYu
 * @since 2018-05-01
 */
@Service
public class UserNodeServiceImpl extends ServiceImpl<UserNodeMapper, UserNode> implements UserNodeService {

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private UserNodeMapper userNodeMapper;

    private UserNodeDTO transferUserNodeDTO(UserNode userNode) {
        UserNodeDTO userNodeDTO = new UserNodeDTO();
        BeanUtils.copyProperties(userNode, userNodeDTO);
        return userNodeDTO;
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
        // 2代表基本用户（游客）
        userNode.setRoleId(2L);
        userNode.setUserId(userAccountId);
        userNode.insert();
    }

    @Override
    public List<UserNodeDTO> getUserNodeDTOListByRoleId(Long roleId) {
        EntityWrapper<UserNode> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("role_id={0}", roleId);
        List<UserNode> userNodeList = userNodeMapper.selectList(entityWrapper);
        if (null == userNodeList || 0 == userNodeList.size()) {
            return null;
        }
        return userNodeList.stream().map(this::transferUserNodeDTO).collect(Collectors.toList());
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

    @Override
    public UserNodeDTO selectByUserInfoId(Long userInfoId) {
        Assert.notNull(userInfoId, "userAccountID must is not null");
        UserNode userNode = userNodeMapper.selectByInfoId(userInfoId);
        if (null == userNode) {
            System.out.println("存在错误的user_id :" + userInfoId + ", 请检查用户节点表");
            return null;
        }
        UserNodeDTO userNodeDTO = new UserNodeDTO();
        BeanUtils.copyProperties(userNode, userNodeDTO);
        return userNodeDTO;
    }

    @Override
    public boolean isDeletedByDepartmentId(Long departmentId) {
        EntityWrapper<UserNode> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("department_id={0}", departmentId);
        return 0 == userNodeMapper.selectCount(entityWrapper);
    }

    @Override
    public BaseVO updateUserNode(SaveUserNodeDTO saveUserNodeDTO) {
        // 合法性验证
        if (null == saveUserNodeDTO.getDepartmentId() || null == saveUserNodeDTO.getRoleId()) {
            return ParamErrorVO.getInstance();
        }
        //
        return null;
    }

    @Override
    @Async
    public void updateDepartment(Long id, Long departmentId) {
        Assert.notNull(id, "userNode: id must is not null");
        Assert.notNull(departmentId, "userNode: departmentId must is not null");
        // 由于内部调用，所有id与departmentId均存在
        UserNode userNode = new UserNode();
        userNode.setId(id);
        userNode.setDepartmentId(departmentId);
        userNode.updateById();
    }
}
