package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 03- 20- 11:35
 */

public class BooleanResultVO extends SimpleResultVO {

    private boolean booleanResult;

    public BooleanResultVO() {
    }

    public BooleanResultVO(boolean status, String reason) {
        super(status, reason);
    }

    public BooleanResultVO(boolean booleanResult) {
        // 使用此方法，默认操作成功
        super(true, "操作成功");
        this.booleanResult = booleanResult;
    }

    public BooleanResultVO(boolean status, String reason, boolean booleanResult) {
        super(status, reason);
        this.booleanResult = booleanResult;
    }

    public boolean isBooleanResult() {
        return booleanResult;
    }

    public void setBooleanResult(boolean booleanResult) {
        this.booleanResult = booleanResult;
    }
}
