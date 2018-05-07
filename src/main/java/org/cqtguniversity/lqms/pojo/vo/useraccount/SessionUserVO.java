package org.cqtguniversity.lqms.pojo.vo.useraccount;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 14:59
 */

public class SessionUserVO extends BaseVO {

    /**
     * 用户名
     */
    private String userName;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 角色
     */
    private String role;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return super.toString() + "SessionUserVO{" +
                "userName='" + userName + '\'' +
                ", realName='" + realName + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
