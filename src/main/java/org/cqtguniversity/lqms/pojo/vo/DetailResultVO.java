package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 11:10
 */

public class DetailResultVO extends SimpleResultVO {

    // 详情
    private BaseVO detail;

    // Alt + Ins  Constructor(构造函数)
    public DetailResultVO() {
    }

    public DetailResultVO(boolean status, String reason) {
        super(status, reason);
    }

    public DetailResultVO(BaseVO detail) {
        // 使用此方法，默认操作成功
        super(true, "操作成功");
        this.detail = detail;
    }

    public DetailResultVO(boolean status, String reason, BaseVO detail) {
        super(status, reason);
        this.detail = detail;
    }

    public Object getDetail() {
        return detail;
    }

    public void setDetail(BaseVO detail) {
        this.detail = detail;
    }

}
