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
 * 
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-13
 */
@TableName("laboratory_schedule")
public class LaboratorySchedule extends Model<LaboratorySchedule> {

    private static final long serialVersionUID = 1L;

    /**
     * 自增序号
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
     * 实验室id
     */
	@TableField("laboratory_id")
	private Long laboratoryId;
    /**
     * 申请人
     */
	@TableField("user_id")
	private Long userId;
    /**
     * 申请说明
     */
	private String instruction;
    /**
     * 开始时间
     */
	@TableField("start_time")
	private Date startTime;
    /**
     * 结束时间
     */
	@TableField("end_time")
	private Date endTime;
    /**
     * 预定状态
     */
	@TableField("schedule_status")
	private Integer scheduleStatus;
    /**
     * 审核用户
     */
	@TableField("check_user")
	private Long checkUser;


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

	public Long getLaboratoryId() {
		return laboratoryId;
	}

	public void setLaboratoryId(Long laboratoryId) {
		this.laboratoryId = laboratoryId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

	public Integer getScheduleStatus() {
		return scheduleStatus;
	}

	public void setScheduleStatus(Integer scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}

	public Long getCheckUser() {
		return checkUser;
	}

	public void setCheckUser(Long checkUser) {
		this.checkUser = checkUser;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "LaboratorySchedule{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", laboratoryId=" + laboratoryId +
			", userId=" + userId +
			", instruction=" + instruction +
			", startTime=" + startTime +
			", endTime=" + endTime +
			", scheduleStatus=" + scheduleStatus +
			", checkUser=" + checkUser +
			"}";
	}
}
