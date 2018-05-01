package org.cqtguniversity.lqms.pojo.vo.config;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 04- 07- 17:23
 */

public class SimpleConfigGroupVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private String gmtCreate;
    /**
     * 配置组-键
     */
    private String groupKey;
    /**
     * 配置组-名字
     */
    private String groupName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getGroupKey() {
        return groupKey;
    }

    public void setGroupKey(String groupKey) {
        this.groupKey = groupKey;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleConfigGroupVO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", groupKey='" + groupKey + '\'' +
                ", groupName='" + groupName + '\'' +
                '}';
    }
}
