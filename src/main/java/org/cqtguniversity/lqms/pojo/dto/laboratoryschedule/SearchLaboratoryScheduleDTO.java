package org.cqtguniversity.lqms.pojo.dto.laboratoryschedule;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 13:35
 */

public class SearchLaboratoryScheduleDTO extends BaseDTO {

    /**
     * 实验室id
     */
    private Long laboratoryId;
    /**
     * 申请说明
     */
    private String instruction;
    /**
     * 时间偏移量
     */
    private Integer offset;

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

    @Override
    public String toString() {
        return super.toString() + "SearchLaboratoryScheduleDTO{" +
                "laboratoryId=" + laboratoryId +
                ", instruction='" + instruction + '\'' +
                ", offset=" + offset +
                '}';
    }
}
