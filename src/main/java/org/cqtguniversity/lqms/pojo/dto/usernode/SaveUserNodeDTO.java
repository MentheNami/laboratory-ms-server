package org.cqtguniversity.lqms.pojo.dto.usernode;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * 用户保存用户节点
 * @author Tangshengyu
 * @create 2018- 05- 14- 18:37
 */

public class SaveUserNodeDTO extends BaseDTO {

    /**
     * 角色ID
     */
    private Long roleId;
    /**
     * 部门ID
     */
    private Long departmentId;

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveUserNodeDTO{" +
                "roleId=" + roleId +
                ", departmentId=" + departmentId +
                '}';
    }
}
