package org.cqtguniversity.lqms.pojo.dto.laboratoryschedule;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 13:24
 */

public class SaveLaboratoryScheduleDTO extends BaseDTO {

    /**
     * 实验室id
     */
    private Long laboratoryId;
    /**
     * 申请说明
     */
    private String instruction;
    /**
     * 开始时间
     */
    private Date startTime;
    /**
     * 结束时间
     */
    private Date endTime;

    public Long getLaboratoryId() {
        return laboratoryId;
    }

    public void setLaboratoryId(Long laboratoryId) {
        this.laboratoryId = laboratoryId;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveLaboratoryScheduleDTO{" +
                "laboratoryId=" + laboratoryId +
                ", instruction='" + instruction + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                '}';
    }
}
