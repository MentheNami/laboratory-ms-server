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
     * 用户信息Id
     */
    private Long userInfoId;
    /**
     * 真实姓名
     */
    private String realName;
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

    public Long getUserInfoId() {
        return userInfoId;
    }

    public void setUserInfoId(Long userInfoId) {
        this.userInfoId = userInfoId;
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

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return super.toString() + "SessionUserVO{" +
                "userName='" + userName + '\'' +
                ", userInfoId='" + userInfoId + '\'' +
                ", realName='" + realName + '\'' +
                ", role='" + role + '\'' +
                ", level=" + level +
                '}';
    }
}
