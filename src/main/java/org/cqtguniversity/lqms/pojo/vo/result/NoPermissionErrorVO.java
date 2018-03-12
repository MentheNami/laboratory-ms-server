package org.cqtguniversity.lqms.pojo.vo.result;

import org.cqtguniversity.lqms.pojo.vo.SimpleResultVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 13:54
 */

public class NoPermissionErrorVO extends SimpleResultVO {

    private static NoPermissionErrorVO paramErrorVO;

    public static NoPermissionErrorVO getInstance(){
        if(null == paramErrorVO)
            paramErrorVO = new NoPermissionErrorVO();
        return paramErrorVO;
    }
    public NoPermissionErrorVO() {
        super(false, "您没有权限");
    }

}
