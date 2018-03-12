package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 11:11
 */

public class SimpleResultVO extends BaseVO {

    // 结果状态
    private boolean status;
    // 结果
    private String reason;

    // Alt + Ins  Constructor(构造函数)
    public SimpleResultVO() {
    }

    public SimpleResultVO(boolean status, String reason) {
        this.status = status;
        this.reason = reason;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
