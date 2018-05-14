package org.cqtguniversity.lqms.pojo.dto.workrecord;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 10:27
 */

public class SaveWorkRecordDTO extends BaseDTO {

    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 开始日期
     */
    private Date beginDate;
    /**
     * 结束日期
     */
    private Date endDate;
    /**
     * 工作单位
     */
    private String companyName;
    /**
     * 职务
     */
    private String workPosition;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
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
        return super.toString() + "SaveWorkRecordDTO{" +
                "userId=" + userId +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", companyName='" + companyName + '\'' +
                ", workPosition='" + workPosition + '\'' +
                '}';
    }
}
