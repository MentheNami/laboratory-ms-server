package org.cqtguniversity.lqms.pojo.dto.config;


import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 13:24
 */

public class SearchConfigOptionDTO extends SearchDTO {

    // 所属配置组
    private Long groupId;

    // 选项名称
    private String optionName;

    // 选项值
    private String optionValue;

    public SearchConfigOptionDTO() {
    }

    public SearchConfigOptionDTO(int page, int rows, Long groupId, String optionName, String optionValue) {
        super(page, rows);
        this.groupId = groupId;
        this.optionName = optionName;
        this.optionValue = optionValue;
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

    @Override
    public String toString() {
        return super.toString() + "SearchConfigOptionDTO{" +
                "groupId=" + groupId +
                ", optionName='" + optionName + '\'' +
                ", optionValue='" + optionValue + '\'' +
                '}';
    }
}
