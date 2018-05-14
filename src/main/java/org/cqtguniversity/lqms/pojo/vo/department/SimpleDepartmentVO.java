package org.cqtguniversity.lqms.pojo.vo.department;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 14- 18:04
 */

public class SimpleDepartmentVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 部门创建时间
     */
    private String gmtCreate;
    /**
     * 部门名称
     */
    private String departmentName;
    /**
     * 部门负责人
     */
    private String principal;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

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
        return super.toString() + "SimpleDepartmentVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", principal='" + principal + '\'' +
                '}';
    }
}
