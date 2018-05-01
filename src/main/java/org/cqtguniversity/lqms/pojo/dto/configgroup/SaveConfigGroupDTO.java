package org.cqtguniversity.lqms.pojo.dto.configgroup;


import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 04- 07- 10:02
 */

public class SaveConfigGroupDTO extends BaseDTO {

    /**
     * 自增序号
     */
    private Long id;
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
        return super.toString() + "SaveConfigGroupDTO{" +
                "id=" + id +
                ", groupKey='" + groupKey + '\'' +
                ", groupName='" + groupName + '\'' +
                '}';
    }
}
