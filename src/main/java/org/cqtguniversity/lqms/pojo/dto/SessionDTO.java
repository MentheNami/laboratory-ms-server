package org.cqtguniversity.lqms.pojo.dto;

import org.cqtguniversity.lqms.pojo.dto.role.RoleDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.UserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 14:59
 */

public class SessionDTO extends BaseDTO {

    /**
     * 账户DTO
     */
    private UserAccountDTO userAccountDTO;
    /**
     * 基本信息DTO
     */
    private UserInfoDTO userInfoDTO;
    /**
     * 角色DTO
     */
    private RoleDTO roleDTO;

    public UserAccountDTO getUserAccountDTO() {
        return userAccountDTO;
    }

    public void setUserAccountDTO(UserAccountDTO userAccountDTO) {
        this.userAccountDTO = userAccountDTO;
    }

    public UserInfoDTO getUserInfoDTO() {
        return userInfoDTO;
    }

    public void setUserInfoDTO(UserInfoDTO userInfoDTO) {
        this.userInfoDTO = userInfoDTO;
    }

    public RoleDTO getRoleDTO() {
        return roleDTO;
    }

    public void setRoleDTO(RoleDTO roleDTO) {
        this.roleDTO = roleDTO;
    }

    @Override
    public String toString() {
        return "SessionDTO{" +
                "userAccountDTO=" + userAccountDTO +
                ", userInfoDTO=" + userInfoDTO +
                ", roleDTO=" + roleDTO +
                '}';
    }

}
