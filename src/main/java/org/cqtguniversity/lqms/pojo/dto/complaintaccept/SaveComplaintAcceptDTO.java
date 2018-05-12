package org.cqtguniversity.lqms.pojo.dto.complaintaccept;

import com.baomidou.mybatisplus.annotations.TableField;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 11:29
 */

public class SaveComplaintAcceptDTO extends BaseDTO {

    /**
     * 投诉id
     */
    private Long complainId;
    /**
     * 投诉处理意见：同意/驳回
     */
    private Integer processingAdvice;
    /**
     * 处理内容
     */
    private String processingContent;

    public Long getComplainId() {
        return complainId;
    }

    public void setComplainId(Long complainId) {
        this.complainId = complainId;
    }

    public Integer getProcessingAdvice() {
        return processingAdvice;
    }

    public void setProcessingAdvice(Integer processingAdvice) {
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
        return super.toString() + "SaveComplaintAcceptDTO{" +
                "complainId=" + complainId +
                ", processingAdvice=" + processingAdvice +
                ", processingContent=" + processingContent +
                '}';
    }
}
