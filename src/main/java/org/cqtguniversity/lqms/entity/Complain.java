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
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("complain")
public class Complain extends Model<Complain> {

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
	@TableField("complain_no")
	private String complainNo;
    /**
     * 联系人
     */
	@TableField("contact_name")
	private String contactName;
    /**
     * 联系电话
     */
	@TableField("contact_phone")
	private Integer contactPhone;
    /**
     * 联系邮箱
     */
	@TableField("contact_email")
	private String contactEmail;
    /**
     * 地址
     */
	private String address;
    /**
     * 投诉标题
     */
	@TableField("complain_title")
	private String complainTitle;
    /**
     * 投诉详情
     */
	@TableField("complain_detail")
	private Long complainDetail;
    /**
     * 投诉状态
     */
	@TableField("complainant_status")
	private Long complainantStatus;
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

	public String getComplainNo() {
		return complainNo;
	}

	public void setComplainNo(String complainNo) {
		this.complainNo = complainNo;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public Integer getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(Integer contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getComplainTitle() {
		return complainTitle;
	}

	public void setComplainTitle(String complainTitle) {
		this.complainTitle = complainTitle;
	}

	public Long getComplainDetail() {
		return complainDetail;
	}

	public void setComplainDetail(Long complainDetail) {
		this.complainDetail = complainDetail;
	}

	public Long getComplainantStatus() {
		return complainantStatus;
	}

	public void setComplainantStatus(Long complainantStatus) {
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
		return "Complain{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", complainantName=" + complainantName +
			", complainNo=" + complainNo +
			", contactName=" + contactName +
			", contactPhone=" + contactPhone +
			", contactEmail=" + contactEmail +
			", address=" + address +
			", complainTitle=" + complainTitle +
			", complainDetail=" + complainDetail +
			", complainantStatus=" + complainantStatus +
			", isDeleted=" + isDeleted +
			"}";
	}
}
