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
 * 设备表
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("device")
public class Device extends Model<Device> {

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
	 * 设备编号
	 */
	@TableField("device_no")
	private String deviceNo;
    /**
     * 设备名称
     */
	@TableField("device_name")
	private String deviceName;
    /**
     * 所属会议室
     */
	private Long laboratory;
    /**
     * 设备类型
     */
	@TableField("device_type")
	private Long deviceType;
    /**
     * 设备状态
     */
	@TableField("device_status")
	private Long deviceStatus;
    /**
     * 是否在线
     */
	@TableField("is_online")
	private Integer isOnline;
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

	public String getDeviceNo() {
		return deviceNo;
	}

	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}

	public String getDeviceName() {
		return deviceName;
	}

	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}

	public Long getLaboratory() {
		return laboratory;
	}

	public void setLaboratory(Long laboratory) {
		this.laboratory = laboratory;
	}

	public Long getDeviceType() {
		return deviceType;
	}

	public void setDeviceType(Long deviceType) {
		this.deviceType = deviceType;
	}

	public Long getDeviceStatus() {
		return deviceStatus;
	}

	public void setDeviceStatus(Long deviceStatus) {
		this.deviceStatus = deviceStatus;
	}

	public Integer getIsOnline() {
		return isOnline;
	}

	public void setIsOnline(Integer isOnline) {
		this.isOnline = isOnline;
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
		return "Device{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", deviceNo=" + deviceNo +
			", deviceName=" + deviceName +
			", laboratory=" + laboratory +
			", deviceType=" + deviceType +
			", deviceStatus=" + deviceStatus +
			", isOnline=" + isOnline +
			", isDeleted=" + isDeleted +
			"}";
	}
}
