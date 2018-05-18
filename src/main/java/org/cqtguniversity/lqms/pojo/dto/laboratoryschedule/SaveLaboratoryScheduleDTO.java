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
     * 日期偏移
     */
    private Integer offset;
    /**
     * 开始时间
     */
    private Integer startTime;
    /**
     * 结束时间
     */
    private Integer endTime;

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

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getStartTime() {
        return startTime;
    }

    public void setStartTime(Integer startTime) {
        this.startTime = startTime;
    }

    public Integer getEndTime() {
        return endTime;
    }

    public void setEndTime(Integer endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveLaboratoryScheduleDTO{" +
                "laboratoryId=" + laboratoryId +
                ", instruction='" + instruction + '\'' +
                ", offset=" + offset +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                '}';
    }
}
