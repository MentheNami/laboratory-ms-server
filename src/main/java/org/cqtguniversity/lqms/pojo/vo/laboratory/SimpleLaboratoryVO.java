package org.cqtguniversity.lqms.pojo.vo.laboratory;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 19- 0:54
 */

public class SimpleLaboratoryVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 所属楼层
     */
    private String floor;
    /**
     * 实验室名称
     */
    private String laboratoryName;
    /**
     * 实验室容量
     */
    private String capacity;
    /**
     * 是否自主预定
     */
    private String isAutonomy;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getLaboratoryName() {
        return laboratoryName;
    }

    public void setLaboratoryName(String laboratoryName) {
        this.laboratoryName = laboratoryName;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getIsAutonomy() {
        return isAutonomy;
    }

    public void setIsAutonomy(String isAutonomy) {
        this.isAutonomy = isAutonomy;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleLaboratoryVO{" +
                "id=" + id +
                ", floor=" + floor +
                ", laboratoryName='" + laboratoryName + '\'' +
                ", capacity=" + capacity +
                ", isAutonomy='" + isAutonomy + '\'' +
                '}';
    }
}
