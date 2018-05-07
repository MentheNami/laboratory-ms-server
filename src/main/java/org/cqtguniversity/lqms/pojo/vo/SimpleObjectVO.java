package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 11:10
 */

public class SimpleObjectVO extends SimpleResultVO {

    // 详情
    private Object detail;

    // Alt + Ins  Constructor(构造函数)
    public SimpleObjectVO() {
    }

    public SimpleObjectVO(boolean status, String reason) {
        super(status, reason);
    }

    public SimpleObjectVO(Object detail) {
        // 使用此方法，默认操作成功
        super(true, "操作成功");
        this.detail = detail;
    }

    public SimpleObjectVO(boolean status, String reason, Object detail) {
        super(status, reason);
        this.detail = detail;
    }

    public Object getDetail() {
        return detail;
    }

    public void setDetail(Object detail) {
        this.detail = detail;
    }

}
