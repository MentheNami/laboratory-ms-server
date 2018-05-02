package org.cqtguniversity.lqms.pojo.vo.laboratory;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 01- 23:19
 */

public class LaboratoryVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 所属楼层
     */
    private Long floor;
    /**
     * 实验室名称
     */
    private String laboratoryName;
    /**
     * 实验室容量
     */
    private Integer capacity;
    /**
     * 是否自主预定
     */
    private Integer isAutonomy;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public Integer getIsAutonomy() {
        return isAutonomy;
    }

    public void setIsAutonomy(Integer isAutonomy) {
        this.isAutonomy = isAutonomy;
    }

    @Override
    public String toString() {
        return super.toString() + "LaboratoryVO{" +
                "id=" + id +
                ", floor=" + floor +
                ", laboratoryName='" + laboratoryName + '\'' +
                ", capacity=" + capacity +
                ", isAutonomy=" + isAutonomy +
                '}';
    }
}
