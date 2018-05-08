package org.cqtguniversity.lqms.pojo.dto.deviceprogram;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 17:34
 */

public class SearchDeviceProgramDTO extends SearchDTO {

    /**
     * 方案编号
     */
    private String applyNo;
    /**
     * 计划申请人
     */
    private String applyUser;
    /**
     * 设备名称
     */
    private String deviceName;
    /**
     * 方案类型：维修，保养，核查
     */
    private Long programType;
    /**
     * 批准人
     */
    private String approvalUser;

    public String getApplyNo() {
        return applyNo;
    }

    public void setApplyNo(String applyNo) {
        this.applyNo = applyNo;
    }

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public Long getProgramType() {
        return programType;
    }

    public void setProgramType(Long programType) {
        this.programType = programType;
    }

    public String getApprovalUser() {
        return approvalUser;
    }

    public void setApprovalUser(String approvalUser) {
        this.approvalUser = approvalUser;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchDeviceProgramDTO{" +
                "applyNo='" + applyNo + '\'' +
                ", applyUser='" + applyUser + '\'' +
                ", deviceName='" + deviceName + '\'' +
                ", programType=" + programType +
                ", approvalUser='" + approvalUser + '\'' +
                '}';
    }
}
