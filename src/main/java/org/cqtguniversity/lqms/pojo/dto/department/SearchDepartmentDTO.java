package org.cqtguniversity.lqms.pojo.dto.department;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * 用于提供部门列表搜索
 * @author Tangshengyu
 * @create 2018- 05- 14- 18:06
 */

public class SearchDepartmentDTO extends SearchDTO {

    /**
     * 部门名称
     */
    private String departmentName;
    /**
     * 部门负责人
     */
    private String principal;

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchDepartmentDTO{" +
                "departmentName='" + departmentName + '\'' +
                ", principal='" + principal + '\'' +
                '}';
    }
}
