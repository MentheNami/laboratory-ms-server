package org.cqtguniversity.lqms.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 实验室表
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("laboratory")
public class Laboratory extends Model<Laboratory> {

    private static final long serialVersionUID = 1L;

    /**
     * 序号自增
     */
	@TableId(value="id", type= IdType.AUTO)
	private Long id;
    /**
     * 创建时间
     */
	@TableField("gmt_create")
	private Date gmtCreate;
    /**
     * 修改时间
     */
	@TableField("gmt_modified")
	private Date gmtModified;
    /**
     * 所属楼层
     */
	private Long floor;
    /**
     * 实验室名称
     */
	@TableField("laboratory_name")
	private String laboratoryName;
    /**
     * 实验室容量
     */
	private Integer capacity;
    /**
     * 是否自主预定
     */
	@TableField("is_autonomy")
	private Integer isAutonomy;
    /**
     * 逻辑删除
     */
	@TableField("is_deleted")
	private Integer isDeleted;


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

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "Laboratory{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", floor=" + floor +
			", laboratoryName=" + laboratoryName +
			", capacity=" + capacity +
			", isAutonomy=" + isAutonomy +
			", isDeleted=" + isDeleted +
			"}";
	}
}
