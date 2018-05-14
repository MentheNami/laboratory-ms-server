package org.cqtguniversity.lqms.pojo.dto.complaint;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 10:54
 */

public class ComplaintDTO extends BaseDTO {

    /**
     * 自增序号
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
     * 投诉方名称
     */
    private String complainantName;
    /**
     * 用户信息id
     */
    private Long userId;
    /**
     * 投诉编号
     */
    private String complaintNo;
    /**
     * 地址
     */
    private String address;
    /**
     * 投诉标题
     */
    private String complaintTitle;
    /**
     * 投诉详情
     */
    private Long complaintDetail;
    /**
     * 投诉状态
     */
    private Integer complainantStatus;

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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getComplaintNo() {
        return complaintNo;
    }

    public void setComplaintNo(String complaintNo) {
        this.complaintNo = complaintNo;
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

    @Override
    public String toString() {
        return super.toString() + "ComplaintDTO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", gmtModified=" + gmtModified +
                ", complainantName='" + complainantName + '\'' +
                ", userId=" + userId +
                ", complaintNo='" + complaintNo + '\'' +
                ", address='" + address + '\'' +
                ", complaintTitle='" + complaintTitle + '\'' +
                ", complaintDetail=" + complaintDetail +
                ", complainantStatus=" + complainantStatus +
                '}';
    }
}
