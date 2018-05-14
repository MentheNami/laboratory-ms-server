package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 05- 14- 17:05
 */

public class SessionVO extends BaseVO {

    /**
     * 用户名
     */
    private String userName;
    /**
     * 角色
     */
    private String role;
    /**
     * 角色级别
     */
    private Integer level;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return super.toString() + "SessionVO{" +
                "userName='" + userName + '\'' +
                ", role='" + role + '\'' +
                ", level=" + level +
                '}';
    }
}
