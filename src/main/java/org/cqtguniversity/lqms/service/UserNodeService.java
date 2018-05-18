package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.UserNode;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.usernode.SaveUserNodeDTO;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.UserInfoVO;

import java.util.List;

/**
 * 用户节点表 服务类
 * @author TangShengYu
 * @since 2018-05-01
 */
public interface UserNodeService extends IService<UserNode> {

    void getUserNode(String cellPhone, String email, Long userAccountId, String userName);

    List<UserNodeDTO> getUserNodeDTOListByRoleId(Long roleId);

    // 通过账户id获取用户节点
    UserNodeDTO selectByUserAccountId(Long userAccountId);

    // 通过用户信息获取用户节点
    UserNodeDTO selectByUserInfoId(Long userInfoId);

    // 是否可以删除部门
    boolean isDeletedByDepartmentId(Long departmentId);

    void userChangeLaboratory(Long userInfoId);

    // 更改用户节点
    BaseVO updateUserNode(SaveUserNodeDTO saveUserNodeDTO);

    // 内部接口， 改变用户节点所属部门
    void updateDepartment(Long id, Long departmentId);

}
