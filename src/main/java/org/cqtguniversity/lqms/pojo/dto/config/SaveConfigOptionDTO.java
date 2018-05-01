package org.cqtguniversity.lqms.pojo.dto.config;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;
import org.springframework.util.StringUtils;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 10:34
 */

public class SaveConfigOptionDTO extends BaseDTO {

    private Long id;
    /**
     * 系统固有标识，若为真，则不能修改删除
     */
    private Integer system;
    /**
     * 分组id
     */
    private Long groupId;
    /**
     * 选项名称
     */
    private String optionName;
    /**
     * 选项值
     */
    private String optionValue;
    /**
     * 优先级排序
     */
    private Integer priority;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isLegitimate() {
        return null != system && null != groupId && !StringUtils.isEmpty(optionName) && !StringUtils.isEmpty(optionValue) && null != priority;
    }

    public Integer getSystem() {
        return system;
    }

    public void setSystem(Integer system) {
        this.system = system;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }

    public String getOptionValue() {
        return optionValue;
    }

    public void setOptionValue(String optionValue) {
        this.optionValue = optionValue;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveConfigOptionDTO{" +
                "id=" + id +
                ", system=" + system +
                ", groupId=" + groupId +
                ", optionName='" + optionName + '\'' +
                ", optionValue='" + optionValue + '\'' +
                ", priority=" + priority +
                '}';
    }
}
