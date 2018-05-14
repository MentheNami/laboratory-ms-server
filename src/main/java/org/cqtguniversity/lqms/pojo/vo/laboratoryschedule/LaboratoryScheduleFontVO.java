package org.cqtguniversity.lqms.pojo.vo.laboratoryschedule;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 16:49
 */

public class LaboratoryScheduleFontVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 时间段
     */
    private Integer period;
    /**
     * 状态
     */
    private Integer status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return super.toString() + "LaboratoryScheduleFontVO{" +
                "id=" + id +
                ", period=" + period +
                ", status=" + status +
                '}';
    }
}
