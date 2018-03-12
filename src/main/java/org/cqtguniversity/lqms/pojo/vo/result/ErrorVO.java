package org.cqtguniversity.lqms.pojo.vo.result;

import org.cqtguniversity.lqms.pojo.vo.SimpleResultVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 13:52
 */

public class ErrorVO extends SimpleResultVO {

    public ErrorVO() {
        super(false, "请求失败");
    }

    public static ErrorVO getInternalError() {
        return new ErrorVO("发生内部错误");
    }

    public ErrorVO(String reason) {
        super(false, "操作失败：" + reason);
    }

    @Override
    public String toString() {
        return "{\"status\":false,\"reason\":\"+getReason()+\"}";
    }

}
