package org.cqtguniversity.lqms.pojo.dto.laboratory;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 01- 22:20
 */

public class SearchLaboratoryDTO extends SearchDTO {

    /**
     * 所属楼层
     */
    private Long floor;
    /**
     * 实验室名称
     */
    private String laboratoryName;

    public SearchLaboratoryDTO() {
    }

    public SearchLaboratoryDTO(int page, int rows, Long floor, String laboratoryName) {
        super(page, rows);
        this.floor = floor;
        this.laboratoryName = laboratoryName;
    }

    public Long getFloor() {
        return floor;
    }

    public void setFloor(Long floor) {
        this.floor = floor;
    }

    public String getLaboratoryName() {
        return laboratoryName;
    }

    public void setLaboratoryName(String laboratoryName) {
        this.laboratoryName = laboratoryName;
    }

    // 源于阿里巴巴Java开发规范，P7  12.
    @Override
    public String toString() {
        return super.toString() + "SearchLaboratoryDTO{" +
                "floor=" + floor +
                ", laboratoryName='" + laboratoryName + '\'' +
                '}';
    }
}
