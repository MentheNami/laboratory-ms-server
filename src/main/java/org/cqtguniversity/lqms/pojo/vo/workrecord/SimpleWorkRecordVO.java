package org.cqtguniversity.lqms.pojo.vo.workrecord;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 14- 10:39
 */

public class SimpleWorkRecordVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 开始日期
     */
    private String beginDate;
    /**
     * 结束日期
     */
    private String endDate;
    /**
     * 工作单位
     */
    private String companyName;
    /**
     * 职务
     */
    private String workPosition;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getWorkPosition() {
        return workPosition;
    }

    public void setWorkPosition(String workPosition) {
        this.workPosition = workPosition;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleWorkRecordVO{" +
                "id=" + id +
                ", userId=" + userId +
                ", beginDate='" + beginDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", companyName='" + companyName + '\'' +
                ", workPosition='" + workPosition + '\'' +
                '}';
    }
}
