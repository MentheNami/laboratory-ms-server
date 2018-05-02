package org.cqtguniversity.lqms.pojo.dto.complaint;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author wang26211
 * @create 2018- 05- 02- 16:43
 */


public class SaveComplaintDTO extends BaseDTO{
    /**
     * 自增序号
     */
    private Long id;
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
    private Integer contactPhone;
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
    private Long complaintDetail;
    /**
     * 投诉状态
     */
    private Long complainantStatus;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getComplainantStatus() {
        return complainantStatus;
    }

    public void setComplainantStatus(Long complainantStatus) {
        this.complainantStatus = complainantStatus;
    }
    // 源于阿里巴巴Java开发规范，P7  12.
    @Override
    public String toString() {
        return super .toString()+"SaveComplaintDTO{" +
                "id=" + id +
                ", complainantName='" + complainantName + '\'' +
                ", complaintNo='" + complaintNo + '\'' +
                ", contactName='" + contactName + '\'' +
                ", contactPhone=" + contactPhone +
                ", contactEmail='" + contactEmail + '\'' +
                ", address='" + address + '\'' +
                ", complaintTitle='" + complaintTitle + '\'' +
                ", complaintDetail=" + complaintDetail +
                ", complainantStatus=" + complainantStatus +
                '}';
    }
}
