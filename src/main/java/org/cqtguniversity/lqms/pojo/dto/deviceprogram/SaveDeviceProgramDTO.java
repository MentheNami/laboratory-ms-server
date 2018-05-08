package org.cqtguniversity.lqms.pojo.dto.deviceprogram;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 17:24
 */

public class SaveDeviceProgramDTO extends BaseDTO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 计划申请人
     */
    private Long applyUser;
    /**
     * 设备id
     */
    private Long deviceId;
    /**
     * 方案类型：维修，保养，核查
     */
    private Long programType;
    /**
     * 方案描述
     */
    private String description;
    /**
     * 执行日期
     */
    private Date executionDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(Long applyUser) {
        this.applyUser = applyUser;
    }

    public Long getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }

    public Long getProgramType() {
        return programType;
    }

    public void setProgramType(Long programType) {
        this.programType = programType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getExecutionDate() {
        return executionDate;
    }

    public void setExecutionDate(Date executionDate) {
        this.executionDate = executionDate;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveDeviceProgramDTO{" +
                "id=" + id +
                ", applyUser=" + applyUser +
                ", deviceId=" + deviceId +
                ", programType=" + programType +
                ", description=" + description +
                ", executionDate=" + executionDate +
                '}';
    }
}
