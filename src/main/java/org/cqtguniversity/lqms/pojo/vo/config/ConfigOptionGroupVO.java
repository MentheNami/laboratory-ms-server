package org.cqtguniversity.lqms.pojo.vo.config;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.List;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 11:10
 */

public class ConfigOptionGroupVO extends BaseVO {

    private Long id;
    private String groupKey;
    private String groupName;
    private List<ConfigOptionDetailVO> configOptionDetailVOList;

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

    public List<ConfigOptionDetailVO> getConfigOptionDetailVOList() {
        return configOptionDetailVOList;
    }

    public void setConfigOptionDetailVOList(List<ConfigOptionDetailVO> configOptionDetailVOList) {
        this.configOptionDetailVOList = configOptionDetailVOList;
    }

    @Override
    public String toString() {
        return super.toString() + "ConfigOptionGroupVO{" +
                "id=" + id +
                ", groupKey='" + groupKey + '\'' +
                ", groupName='" + groupName + '\'' +
                ", configOptionDetailVOList=" + configOptionDetailVOList +
                '}';
    }
}
