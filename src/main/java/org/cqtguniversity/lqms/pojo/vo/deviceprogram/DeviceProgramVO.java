package org.cqtguniversity.lqms.pojo.vo.deviceprogram;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 20:56
 */

public class DeviceProgramVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 计划申请人
     */
    private Long applyUser;
    /**
     * 申请编号
     */
    private String applyNo;
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
    /**
     * 批准人
     */
    private Long approvalUser;
    /**
     * 意见：同意/不同意
     */
    private Integer approvalOpinion;
    /**
     * 批准描述
     */
    private String approvalDescription;
    /**
     * 批准时间
     */
    private Date approvalTime;

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

    public String getApplyNo() {
        return applyNo;
    }

    public void setApplyNo(String applyNo) {
        this.applyNo = applyNo;
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

    public Long getApprovalUser() {
        return approvalUser;
    }

    public void setApprovalUser(Long approvalUser) {
        this.approvalUser = approvalUser;
    }

    public Integer getApprovalOpinion() {
        return approvalOpinion;
    }

    public void setApprovalOpinion(Integer approvalOpinion) {
        this.approvalOpinion = approvalOpinion;
    }

    public String getApprovalDescription() {
        return approvalDescription;
    }

    public void setApprovalDescription(String approvalDescription) {
        this.approvalDescription = approvalDescription;
    }

    public Date getApprovalTime() {
        return approvalTime;
    }

    public void setApprovalTime(Date approvalTime) {
        this.approvalTime = approvalTime;
    }

    @Override
    public String toString() {
        return super.toString() + "DeviceProgramVO{" +
                "id=" + id +
                ", applyUser=" + applyUser +
                ", applyNo='" + applyNo + '\'' +
                ", deviceId=" + deviceId +
                ", programType=" + programType +
                ", description='" + description + '\'' +
                ", executionDate=" + executionDate +
                ", approvalUser=" + approvalUser +
                ", approvalOpinion=" + approvalOpinion +
                ", approvalDescription='" + approvalDescription + '\'' +
                ", approvalTime=" + approvalTime +
                '}';
    }
}
