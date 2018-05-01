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
 * 投诉受理表
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("complaint_accept")
public class ComplaintAccept extends Model<ComplaintAccept> {

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
     * 投诉id
     */
	@TableField("complain_id")
	private Long complainId;
    /**
     * 受理者
     */
	@TableField("acceptor_by")
	private Long acceptorBy;
    /**
     * 投诉处理意见：同意/驳回
     */
	@TableField("processing_advice")
	private Integer processingAdvice;
    /**
     * 处理内容
     */
	@TableField("processing_content")
	private Long processingContent;
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

	public Long getComplainId() {
		return complainId;
	}

	public void setComplainId(Long complainId) {
		this.complainId = complainId;
	}

	public Long getAcceptorBy() {
		return acceptorBy;
	}

	public void setAcceptorBy(Long acceptorBy) {
		this.acceptorBy = acceptorBy;
	}

	public Integer getProcessingAdvice() {
		return processingAdvice;
	}

	public void setProcessingAdvice(Integer processingAdvice) {
		this.processingAdvice = processingAdvice;
	}

	public Long getProcessingContent() {
		return processingContent;
	}

	public void setProcessingContent(Long processingContent) {
		this.processingContent = processingContent;
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
		return "ComplaintAccept{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", complainId=" + complainId +
			", acceptorBy=" + acceptorBy +
			", processingAdvice=" + processingAdvice +
			", processingContent=" + processingContent +
				", isDeleted=" + isDeleted +
			"}";
	}
}
