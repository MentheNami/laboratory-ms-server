package org.cqtguniversity.lqms.pojo.vo.university;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 18- 10:47
 */

public class SimpleUniversityVO extends BaseVO{
    /**
     * 序号自增
     */
    private Long id;
    /**
     * 大学名称
     */
    private String universityName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUniversityName() {
        return universityName;
    }

    public void setUniversityName(String universityName) {
        this.universityName = universityName;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleUniversityVO{" +
                "id=" + id +
                ", universityName='" + universityName + '\'' +
                '}';
    }
}
