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
 * 投诉表
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-02
 */
@TableName("complaint")
public class Complaint extends Model<Complaint> {

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
     * 投诉方名称
     */
	@TableField("complainant_name")
	private String complainantName;
    /**
     * 投诉编号
     */
	@TableField("complaint_no")
	private String complaintNo;
    /**
     * 用户信息id
     */
	@TableField("user_id")
	private Long userId;
    /**
     * 地址
     */
	private String address;
    /**
     * 投诉标题
     */
	@TableField("complaint_title")
	private String complaintTitle;
    /**
     * 投诉详情
     */
	@TableField("complaint_detail")
	private Long complaintDetail;
    /**
     * 投诉状态
     */
	@TableField("complainant_status")
	private Integer complainantStatus;
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

	public String getComplainantName() {
		return complainantName;
	}

	public void setComplainantName(String complainantName) {
		this.complainantName = complainantName;
	}

	public String getComplaintNo() {
		return complaintNo;
	}

	public void setComplaintNo(String complaintNo) {
		this.complaintNo = complaintNo;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getComplaintTitle() {
		return complaintTitle;
	}

	public void setComplaintTitle(String complaintTitle) {
		this.complaintTitle = complaintTitle;
	}

	public Long getComplaintDetail() {
		return complaintDetail;
	}

	public void setComplaintDetail(Long complaintDetail) {
		this.complaintDetail = complaintDetail;
	}

	public Integer getComplainantStatus() {
		return complainantStatus;
	}

	public void setComplainantStatus(Integer complainantStatus) {
		this.complainantStatus = complainantStatus;
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
		return  "Complaint{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", complainantName=" + complainantName +
			", complaintNo=" + complaintNo +
			", userId=" + userId +
			", address=" + address +
			", complaintTitle=" + complaintTitle +
			", complaintDetail=" + complaintDetail +
			", complainantStatus=" + complainantStatus +
			", isDeleted=" + isDeleted +
			"}";
	}
}
