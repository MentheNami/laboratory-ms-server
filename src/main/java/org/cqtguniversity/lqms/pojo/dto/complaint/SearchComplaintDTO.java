package org.cqtguniversity.lqms.pojo.dto.complaint;/**
 * @author wang26211
 * @create 2018- 05- 02- 17:03
 */

import com.baomidou.mybatisplus.annotations.TableField;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

import java.util.Date;

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
     * 投诉方名称
     */
    private String complainantName;
    /**
     * 投诉状态
     */
    private Long complainantStatus;

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

    public String getComplainantName() {
        return complainantName;
    }

    public void setComplainantName(String complainantName) {
        this.complainantName = complainantName;
    }

    public Long getComplainantStatus() {
        return complainantStatus;
    }

    public void setComplainantStatus(Long complainantStatus) {
        this.complainantStatus = complainantStatus;
    }

    @Override
    public String toString() {
        return super.toString()+"SearchComplaintDTO{" +
                "complaintNo='" + complaintNo + '\'' +
                ", contactName='" + contactName + '\'' +
                ", complainantName='" + complainantName + '\'' +
                ", complainantStatus=" + complainantStatus +
                '}';
    }
}
