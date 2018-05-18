package org.cqtguniversity.lqms.pojo.dto.laboratoryschedule;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 18- 19:57
 */

public class SimpleSearchLaboratoryDTO extends SearchDTO {

    /**
     * 申请用户
     */
    private String userName;
    /**
     * 实验室
     */
    private Long laboratoryId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getLaboratoryId() {
        return laboratoryId;
    }

    public void setLaboratoryId(Long laboratoryId) {
        this.laboratoryId = laboratoryId;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleSearchLaboratoryDTO{" +
                "userName='" + userName + '\'' +
                ", laboratoryId=" + laboratoryId +
                '}';
    }
}
