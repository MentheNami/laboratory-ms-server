package org.cqtguniversity.lqms.pojo.vo.config;


import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 10:24
 */

public class SimpleConfigOptionDetailVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private String gmtCreate;
    /**
     * 系统固有标识，若为真，则不能修改删除
     */
    private String system;
    /**
     * 分组id
     */
    private String groupName;
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

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
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
        return super.toString() + "SimpleConfigOptionDetailVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", system='" + system + '\'' +
                ", groupName='" + groupName + '\'' +
                ", optionName='" + optionName + '\'' +
                ", optionValue='" + optionValue + '\'' +
                ", priority=" + priority +
                ", useCount=" + useCount +
                '}';
    }
}
