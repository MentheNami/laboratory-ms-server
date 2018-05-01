package org.cqtguniversity.lqms.pojo.dto.configgroup;

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 04- 07- 18:26
 */

public class SearchConfigGroupDTO extends SearchDTO {

    /**
     * 配置组-键
     */
    private String groupKey;
    /**
     * 配置组-名字
     */
    private String groupName;

    public SearchConfigGroupDTO() {
    }

    public SearchConfigGroupDTO(int page, int rows, String groupKey, String groupName) {
        super(page, rows);
        this.groupKey = groupKey;
        this.groupName = groupName;
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
        return super.toString() + "SearchConfigGroupDTO{" +
                "groupKey='" + groupKey + '\'' +
                ", groupName='" + groupName + '\'' +
                '}';
    }
}
