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
 * 设备方案申请
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("device_program")
public class DeviceProgram extends Model<DeviceProgram> {

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
     * 计划申请人
     */
	@TableField("apply_user")
	private Long applyUser;
    /**
     * 申请编号
     */
	@TableField("apply_no")
	private String applyNo;
    /**
     * 设备id
     */
	@TableField("device_id")
	private Long deviceId;
    /**
     * 方案类型：维修，保养，核查
     */
	@TableField("program_type")
	private Long programType;
    /**
     * 方案描述
     */
	private Long description;
    /**
     * 执行日期
     */
	@TableField("execution_date")
	private Date executionDate;
    /**
     * 批准人
     */
	@TableField("approval_user")
	private Long approvalUser;
    /**
     * 意见：同意/不同意
     */
	@TableField("approval_opinion")
	private Integer approvalOpinion;
    /**
     * 批准描述
     */
	@TableField("approval_description")
	private Long approvalDescription;
    /**
     * 批准时间
     */
	@TableField("approval_time")
	private Date approvalTime;
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

	public Long getApplyUser() {
		return applyUser;
	}

	public void setApplyUser(Long applyUser) {
		this.applyUser = applyUser;
	}

	public String getApplyNo() {
		return applyNo;
	}

	public void setApplyNo(String applyNo) {
		this.applyNo = applyNo;
	}

	public Long getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(Long deviceId) {
		this.deviceId = deviceId;
	}

	public Long getProgramType() {
		return programType;
	}

	public void setProgramType(Long programType) {
		this.programType = programType;
	}

	public Long getDescription() {
		return description;
	}

	public void setDescription(Long description) {
		this.description = description;
	}

	public Date getExecutionDate() {
		return executionDate;
	}

	public void setExecutionDate(Date executionDate) {
		this.executionDate = executionDate;
	}

	public Long getApprovalUser() {
		return approvalUser;
	}

	public void setApprovalUser(Long approvalUser) {
		this.approvalUser = approvalUser;
	}

	public Integer getApprovalOpinion() {
		return approvalOpinion;
	}

	public void setApprovalOpinion(Integer approvalOpinion) {
		this.approvalOpinion = approvalOpinion;
	}

	public Long getApprovalDescription() {
		return approvalDescription;
	}

	public void setApprovalDescription(Long approvalDescription) {
		this.approvalDescription = approvalDescription;
	}

	public Date getApprovalTime() {
		return approvalTime;
	}

	public void setApprovalTime(Date approvalTime) {
		this.approvalTime = approvalTime;
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
		return "DeviceProgram{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", applyUser=" + applyUser +
			", applyNo=" + applyNo +
			", deviceId=" + deviceId +
			", programType=" + programType +
			", description=" + description +
			", executionDate=" + executionDate +
			", approvalUser=" + approvalUser +
			", approvalOpinion=" + approvalOpinion +
			", approvalDescription=" + approvalDescription +
			", approvalTime=" + approvalTime +
			", isDeleted=" + isDeleted +
			"}";
	}
}
