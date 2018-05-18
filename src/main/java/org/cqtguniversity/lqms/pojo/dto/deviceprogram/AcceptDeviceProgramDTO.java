package org.cqtguniversity.lqms.pojo.dto.deviceprogram;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 18- 18:03
 */

public class AcceptDeviceProgramDTO extends BaseDTO {

    /**
     * 方案Id
     */
    private Long id;
    /**
     * 意见：同意/不同意
     */
    private Integer approvalOpinion;
    /**
     * 批准描述
     */
    private String approvalDescription;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getApprovalOpinion() {
        return approvalOpinion;
    }

    public void setApprovalOpinion(Integer approvalOpinion) {
        this.approvalOpinion = approvalOpinion;
    }

    public String getApprovalDescription() {
        return approvalDescription;
    }

    public void setApprovalDescription(String approvalDescription) {
        this.approvalDescription = approvalDescription;
    }

    @Override
    public String toString() {
        return super.toString() + "AcceptDeviceProgramDTO{" +
                "id=" + id +
                ", approvalOpinion=" + approvalOpinion +
                ", approvalDescription='" + approvalDescription + '\'' +
                '}';
    }
}
