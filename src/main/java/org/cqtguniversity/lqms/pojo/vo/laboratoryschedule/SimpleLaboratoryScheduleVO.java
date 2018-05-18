package org.cqtguniversity.lqms.pojo.vo.laboratoryschedule;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 18- 20:04
 */

public class SimpleLaboratoryScheduleVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 申请时间
     */
    private String gmtCreate;
    /**
     * 实验室名称
     */
    private String laboratoryName;
    /**
     * 申请人
     */
    private String userName;
    /**
     * 申请说明
     */
    private String instruction;
    /**
     * 开始时间
     */
    private String startTime;
    /**
     * 结束时间
     */
    private String endTime;
    /**
     * 预定状态
     */
    private String scheduleStatus;
    /**
     * 审核用户
     */
    private String checkUser;

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

    public String getLaboratoryName() {
        return laboratoryName;
    }

    public void setLaboratoryName(String laboratoryName) {
        this.laboratoryName = laboratoryName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getScheduleStatus() {
        return scheduleStatus;
    }

    public void setScheduleStatus(String scheduleStatus) {
        this.scheduleStatus = scheduleStatus;
    }

    public String getCheckUser() {
        return checkUser;
    }

    public void setCheckUser(String checkUser) {
        this.checkUser = checkUser;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleLaboratoryScheduleVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", laboratoryName='" + laboratoryName + '\'' +
                ", userName='" + userName + '\'' +
                ", instruction='" + instruction + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", scheduleStatus='" + scheduleStatus + '\'' +
                ", checkUser='" + checkUser + '\'' +
                '}';
    }
}
