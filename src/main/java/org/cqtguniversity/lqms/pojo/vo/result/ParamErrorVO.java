package org.cqtguniversity.lqms.pojo.vo.result;

import org.cqtguniversity.lqms.pojo.vo.SimpleResultVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 13:54
 */

public class ParamErrorVO extends SimpleResultVO {

    private static ParamErrorVO paramErrorVO;

    public static ParamErrorVO getInstance(){
        if(null == paramErrorVO)
            paramErrorVO = new ParamErrorVO();
        return paramErrorVO;
    }
    public ParamErrorVO() {
        super(false, "参数错误");
    }

}
