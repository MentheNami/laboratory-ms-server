package org.cqtguniversity.lqms.pojo.dto.department;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 11:25
 */

public class SaveDepartmentDTO extends BaseDTO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 部门名称
     */
    private String departmentName;
    /**
     * 部门负责人
     */
    private Long principal;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public Long getPrincipal() {
        return principal;
    }

    public void setPrincipal(Long principal) {
        this.principal = principal;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveDepartmentDTO{" +
                "id=" + id +
                ", departmentName='" + departmentName + '\'' +
                ", principal=" + principal +
                '}';
    }
}
