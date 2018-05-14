package org.cqtguniversity.lqms.pojo.vo.educationrecord;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.SimpleUserInfoVO;
import org.cqtguniversity.lqms.pojo.vo.workrecord.SimpleWorkRecordVO;

import java.util.List;

/**
 * 一个复杂的档案信息，包含一个简单学历、一个简单的用户信息，一个工作经历列表
 * @author Tangshengyu
 * @create 2018- 05- 14- 19:52
 */

public class ComplexEducationRecordVO extends BaseVO {

    /**
     * 简单的档案学历VO
     */
    private SimpleEducationRecordVO simpleEducationRecordVO;
    /**
     * 简单的用户基本信息VO
     */
    private SimpleUserInfoVO simpleUserInfoVO;
    /**
     * 简单的工作经历VO列表
     */
    private List<SimpleWorkRecordVO> simpleWorkRecordVOList;

    public SimpleEducationRecordVO getSimpleEducationRecordVO() {
        return simpleEducationRecordVO;
    }

    public void setSimpleEducationRecordVO(SimpleEducationRecordVO simpleEducationRecordVO) {
        this.simpleEducationRecordVO = simpleEducationRecordVO;
    }

    public SimpleUserInfoVO getSimpleUserInfoVO() {
        return simpleUserInfoVO;
    }

    public void setSimpleUserInfoVO(SimpleUserInfoVO simpleUserInfoVO) {
        this.simpleUserInfoVO = simpleUserInfoVO;
    }

    public List<SimpleWorkRecordVO> getSimpleWorkRecordVOList() {
        return simpleWorkRecordVOList;
    }

    public void setSimpleWorkRecordVOList(List<SimpleWorkRecordVO> simpleWorkRecordVOList) {
        this.simpleWorkRecordVOList = simpleWorkRecordVOList;
    }

    @Override
    public String toString() {
        return super.toString() + "ComplexEducationRecordVO{" +
                "simpleEducationRecordVO=" + simpleEducationRecordVO +
                ", simpleUserInfoVO=" + simpleUserInfoVO +
                ", simpleWorkRecordVOList=" + simpleWorkRecordVOList +
                '}';
    }
}
