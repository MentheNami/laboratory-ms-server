package org.cqtguniversity.lqms.pojo.dto.useraccount;/**
 * @author wang26211
 * @create 2018- 05- 04- 14:21
 */

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author wang26211
 * @create 2018- 05- 04- 14:21
 */
public class SaveUserAccountDTO extends BaseDTO {
    /**
     * 自增序号
     */
    private Long id;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 手机号
     */
    private String cellPhone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 验证码
     */
    private String code;
    /**
     * 密码
     */
    private String userPassword;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveUserAccountDTO{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", cellPhone='" + cellPhone + '\'' +
                ", email='" + email + '\'' +
                ", code='" + code + '\'' +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
