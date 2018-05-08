package org.cqtguniversity.lqms.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import java.math.BigDecimal;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 任务信息
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("task_info")
public class TaskInfo extends Model<TaskInfo> {

    private static final long serialVersionUID = 1L;

    /**
     * 自增-序号
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
     * 所属流程
     */
	@TableField("process_id")
	private Long processId;
    /**
     * 任务名称
     */
	@TableField("task_name")
	private String taskName;
    /**
     * 指派用户
     */
	@TableField("assign_user_id")
	private Long assignUserId;
    /**
     * 任务类型
     */
	@TableField("type_id")
	private Long typeId;
    /**
     * 优先级
     */
	private Integer priority;
    /**
     * 完成进度
     */
	private BigDecimal consumed;
    /**
     * 描述
     */
	@TableField("desc_id")
	private Long descId;
    /**
     * 截止日期
     */
	private Date deadline;
    /**
     * 创建者
     */
	@TableField("created_by")
	private Long createdBy;
    /**
     * 创建时间
     */
	@TableField("created_time")
	private Date createdTime;
    /**
     * 结束者
     */
	@TableField("end_by")
	private Long endBy;
    /**
     * 结束时间
     */
	@TableField("end_time")
	private Date endTime;
    /**
     * 结束原因
     */
	@TableField("end_reason")
	private String endReason;
    /**
     * 任务状态
     */
	@TableField("status_id")
	private Long statusId;
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

	public Long getProcessId() {
		return processId;
	}

	public void setProcessId(Long processId) {
		this.processId = processId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public Long getAssignUserId() {
		return assignUserId;
	}

	public void setAssignUserId(Long assignUserId) {
		this.assignUserId = assignUserId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public BigDecimal getConsumed() {
		return consumed;
	}

	public void setConsumed(BigDecimal consumed) {
		this.consumed = consumed;
	}

	public Long getDescId() {
		return descId;
	}

	public void setDescId(Long descId) {
		this.descId = descId;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public Long getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public Long getEndBy() {
		return endBy;
	}

	public void setEndBy(Long endBy) {
		this.endBy = endBy;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getEndReason() {
		return endReason;
	}

	public void setEndReason(String endReason) {
		this.endReason = endReason;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
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
		return "TaskInfo{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", processId=" + processId +
			", taskName=" + taskName +
			", assignUserId=" + assignUserId +
			", typeId=" + typeId +
			", priority=" + priority +
			", consumed=" + consumed +
			", descId=" + descId +
			", deadline=" + deadline +
			", createdBy=" + createdBy +
			", createdTime=" + createdTime +
			", endBy=" + endBy +
			", endTime=" + endTime +
			", endReason=" + endReason +
			", statusId=" + statusId +
			", isDeleted=" + isDeleted +
			"}";
	}
}
