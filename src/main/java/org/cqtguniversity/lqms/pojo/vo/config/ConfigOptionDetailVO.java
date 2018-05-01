package org.cqtguniversity.lqms.pojo.vo.config;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 10:24
 */

public class ConfigOptionDetailVO extends BaseVO {

    /**
     * 自增序号
     */
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
    /**
     * 使用数量
     */
    private Integer useCount;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Integer getUseCount() {
        return useCount;
    }

    public void setUseCount(Integer useCount) {
        this.useCount = useCount;
    }

    @Override
    public String toString() {
        return super.toString() + "ConfigOptionDetailVO{" +
                "id=" + id +
                ", system=" + system +
                ", groupId=" + groupId +
                ", optionName='" + optionName + '\'' +
                ", optionValue='" + optionValue + '\'' +
                ", priority=" + priority +
                ", useCount=" + useCount +
                '}';
    }
}
