package org.cqtguniversity.lqms.pojo.vo.complaint;


import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author wang26211
 * @create 2018- 05- 04- 10:19
 */
public class SimpleComplaintVO extends BaseVO {
    /**
     * 自增序号
     */
    private Long id;
    /**
     * 投诉事件
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
        return super .toString() +"SimpleComplaintVO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", complainantName='" + complainantName + '\'' +
                ", complaintNo='" + complaintNo + '\'' +
                ", address='" + address + '\'' +
                ", complaintTitle='" + complaintTitle + '\'' +
                ", complaintDetail='" + complaintDetail + '\'' +
                ", complainantStatus='" + complainantStatus + '\'' +
                '}';
    }
}
