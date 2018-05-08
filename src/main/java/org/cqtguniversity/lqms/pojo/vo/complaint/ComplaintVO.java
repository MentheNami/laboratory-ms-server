package org.cqtguniversity.lqms.pojo.vo.complaint;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author wang26211
 * @create 2018- 05- 02- 18:55
 */
public class ComplaintVO extends BaseVO {
    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private String gmtCreate;
    /**
     * 投诉方名称
     */
    private String complainantName;
    /**
     * 投诉编号
     */
    private String complaintNo;
    /**
     * 联系人
     */
    private String contactName;
    /**
     * 联系电话
     */
    private String contactPhone;
    /**
     * 联系邮箱
     */
    private String contactEmail;
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
    private String complaintDetail;
    /**
     * 投诉状态
     */
    private String complainantStatus;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
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

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
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

    public String getComplaintTitle() {
        return complaintTitle;
    }

    public void setComplaintTitle(String complaintTitle) {
        this.complaintTitle = complaintTitle;
    }

    public String getComplaintDetail() {
        return complaintDetail;
    }

    public void setComplaintDetail(String complaintDetail) {
        this.complaintDetail = complaintDetail;
    }

    public String getComplainantStatus() {
        return complainantStatus;
    }

    public void setComplainantStatus(String complainantStatus) {
        this.complainantStatus = complainantStatus;
    }

    @Override
    public String toString() {
        return super.toString() + "ComplaintVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", complainantName='" + complainantName + '\'' +
                ", complaintNo='" + complaintNo + '\'' +
                ", contactName='" + contactName + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                ", contactEmail='" + contactEmail + '\'' +
                ", address='" + address + '\'' +
                ", complaintTitle='" + complaintTitle + '\'' +
                ", complaintDetail='" + complaintDetail + '\'' +
                ", complainantStatus='" + complainantStatus + '\'' +
                '}';
    }
}
