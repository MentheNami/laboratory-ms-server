package org.cqtguniversity.lqms.pojo.dto.complaint;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author wang26211
 * @create 2018- 05- 02- 17:03
 */
public class SearchComplaintDTO extends SearchDTO{

    /**
     * 投诉编号
     */
    private String complaintNo;
    /**
     * 联系人
     */
    private String contactName;
    /**
     * 投诉状态
     */
    private Long complainantStatus;
    /**
     * 投诉详情
     */
    private String complaintDetail;

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

    public Long getComplainantStatus() {
        return complainantStatus;
    }

    public void setComplainantStatus(Long complainantStatus) {
        this.complainantStatus = complainantStatus;
    }

    public String getComplaintDetail() {
        return complaintDetail;
    }

    public void setComplaintDetail(String complaintDetail) {
        this.complaintDetail = complaintDetail;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchComplaintDTO{" +
                "complaintNo='" + complaintNo + '\'' +
                ", contactName='" + contactName + '\'' +
                ", complainantStatus=" + complainantStatus +
                ", complaintDetail='" + complaintDetail + '\'' +
                '}';
    }
}
