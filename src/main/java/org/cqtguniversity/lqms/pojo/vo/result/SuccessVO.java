package org.cqtguniversity.lqms.pojo.vo.result;

import org.cqtguniversity.lqms.pojo.vo.SimpleResultVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 13:55
 */

public class SuccessVO extends SimpleResultVO {

    private static SuccessVO successVO;

    public static SuccessVO getInstance(){
        if(null == successVO)
            successVO = new SuccessVO();
        return successVO;
    }

    public SuccessVO() {
        super(true, "操作成功");
    }

    public SuccessVO(String reason) {
        super(true, "操作成功："+reason);
    }

}
