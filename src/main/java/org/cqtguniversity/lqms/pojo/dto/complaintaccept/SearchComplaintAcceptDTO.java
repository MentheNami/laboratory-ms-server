package org.cqtguniversity.lqms.pojo.dto.complaintaccept;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 10:43
 */

public class SearchComplaintAcceptDTO extends SearchDTO {

    // 受理人
    private String acceptorBy;

    // 受理意见
    private Long processingAdvice;

    public String getAcceptorBy() {
        return acceptorBy;
    }

    public void setAcceptorBy(String acceptorBy) {
        this.acceptorBy = acceptorBy;
    }

    public Long getProcessingAdvice() {
        return processingAdvice;
    }

    public void setProcessingAdvice(Long processingAdvice) {
        this.processingAdvice = processingAdvice;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchComplaintAcceptDTO{" +
                "acceptorBy='" + acceptorBy + '\'' +
                ", processingAdvice=" + processingAdvice +
                '}';
    }
}
