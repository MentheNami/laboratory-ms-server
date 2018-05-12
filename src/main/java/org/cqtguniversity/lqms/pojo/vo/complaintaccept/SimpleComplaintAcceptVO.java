package org.cqtguniversity.lqms.pojo.vo.complaintaccept;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 10:47
 */

public class SimpleComplaintAcceptVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 投诉编号
     */
    private String complainId;
    /**
     * 受理时间
     */
    private String gmtModified;
    /**
     * 受理者
     */
    private String acceptorBy;
    /**
     * 投诉处理意见：同意/驳回
     */
    private String processingAdvice;
    /**
     * 处理内容
     */
    private String processingContent;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getComplainId() {
        return complainId;
    }

    public void setComplainId(String complainId) {
        this.complainId = complainId;
    }

    public String getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(String gmtModified) {
        this.gmtModified = gmtModified;
    }

    public String getAcceptorBy() {
        return acceptorBy;
    }

    public void setAcceptorBy(String acceptorBy) {
        this.acceptorBy = acceptorBy;
    }

    public String getProcessingAdvice() {
        return processingAdvice;
    }

    public void setProcessingAdvice(String processingAdvice) {
        this.processingAdvice = processingAdvice;
    }

    public String getProcessingContent() {
        return processingContent;
    }

    public void setProcessingContent(String processingContent) {
        this.processingContent = processingContent;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleComplaintAcceptVO{" +
                "id=" + id +
                ", complainId='" + complainId + '\'' +
                ", gmtModified='" + gmtModified + '\'' +
                ", acceptorBy='" + acceptorBy + '\'' +
                ", processingAdvice=" + processingAdvice +
                ", processingContent=" + processingContent +
                '}';
    }
}
