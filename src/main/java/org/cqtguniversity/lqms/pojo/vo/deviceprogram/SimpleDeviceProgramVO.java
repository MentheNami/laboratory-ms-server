package org.cqtguniversity.lqms.pojo.vo.deviceprogram;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 21:05
 */

public class SimpleDeviceProgramVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 申请时间
     */
    private String gmtCreate;
    /**
     * 计划申请人
     */
    private String applyUser;
    /**
     * 申请编号
     */
    private String applyNo;
    /**
     * 设备名称
     */
    private String deviceName;
    /**
     * 方案类型：维修，保养，核查
     */
    private String programType;
    /**
     * 执行日期
     */
    private String executionDate;
    /**
     * 是否审批
     */
    private String isApproval;

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

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }

    public String getApplyNo() {
        return applyNo;
    }

    public void setApplyNo(String applyNo) {
        this.applyNo = applyNo;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getProgramType() {
        return programType;
    }

    public void setProgramType(String programType) {
        this.programType = programType;
    }

    public String getExecutionDate() {
        return executionDate;
    }

    public void setExecutionDate(String executionDate) {
        this.executionDate = executionDate;
    }

    public String getIsApproval() {
        return isApproval;
    }

    public void setIsApproval(String isApproval) {
        this.isApproval = isApproval;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleDeviceProgramVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", applyUser='" + applyUser + '\'' +
                ", applyNo='" + applyNo + '\'' +
                ", deviceName='" + deviceName + '\'' +
                ", programType='" + programType + '\'' +
                ", executionDate='" + executionDate + '\'' +
                ", isApproval='" + isApproval + '\'' +
                '}';
    }
}
