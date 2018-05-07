package org.cqtguniversity.lqms.pojo.dto.role;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 14:41
 */

public class RoleDTO extends BaseDTO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreated;
    /**
     * 修改时间
     */
    private Date gmtModified;
    /**
     * 角色名
     */
    private Long roleName;
    /**
     * 描述
     */
    private Long description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGmtCreated() {
        return gmtCreated;
    }

    public void setGmtCreated(Date gmtCreated) {
        this.gmtCreated = gmtCreated;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public Long getRoleName() {
        return roleName;
    }

    public void setRoleName(Long roleName) {
        this.roleName = roleName;
    }

    public Long getDescription() {
        return description;
    }

    public void setDescription(Long description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return super.toString() + "RoleDTO{" +
                "id=" + id +
                ", gmtCreated=" + gmtCreated +
                ", gmtModified=" + gmtModified +
                ", roleName='" + roleName + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
