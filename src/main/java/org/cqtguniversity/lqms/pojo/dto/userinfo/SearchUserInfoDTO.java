package org.cqtguniversity.lqms.pojo.dto.userinfo;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author wang26211
 * @create 2018- 05- 04- 15:58
 */
public class SearchUserInfoDTO extends SearchDTO{

    /**
     * 用户角色
     */
    private Long roleName;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 手机
     */
    private String cellPhone;
    /**
     * 邮箱
     */
    private String email;

    public Long getRoleName() {
        return roleName;
    }

    public void setRoleName(Long roleName) {
        this.roleName = roleName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchUserInfoDTO{" +
                "roleName=" + roleName +
                ", realName='" + realName + '\'' +
                ", cellPhone='" + cellPhone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
