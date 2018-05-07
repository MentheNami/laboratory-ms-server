package org.cqtguniversity.lqms.pojo.dto.laboratory;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 07- 16:27
 */

public class LaboratoryDTO extends BaseDTO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 修改时间
     */
    private Date gmtModified;
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

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
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
        return super.toString() + "LaboratoryDTO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", gmtModified=" + gmtModified +
                ", floor=" + floor +
                ", laboratoryName='" + laboratoryName + '\'' +
                ", capacity=" + capacity +
                ", isAutonomy=" + isAutonomy +
                '}';
    }
}
