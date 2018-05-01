package org.cqtguniversity.lqms.pojo.dto.configoption;


import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 21- 12:56
 */

public class ConfigOptionDTO extends BaseDTO {

    /**
     * 配置选项Id
     */
    private Integer id;
    /**
     * 配置选项Key
     */
    private String configName;
    /**
     * 配置选项Value
     */
    private String configValue;
    /**
     * 配置选项所属组
     */
    private String configGroup;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConfigName() {
        return configName;
    }

    public void setConfigName(String configName) {
        this.configName = configName;
    }

    public String getConfigValue() {
        return configValue;
    }

    public void setConfigValue(String configValue) {
        this.configValue = configValue;
    }

    public String getConfigGroup() {
        return configGroup;
    }

    public void setConfigGroup(String configGroup) {
        this.configGroup = configGroup;
    }

    @Override
    public String toString() {
        return super.toString() + "ConfigOptionDTO{" +
                "id=" + id +
                ", configName='" + configName + '\'' +
                ", configValue='" + configValue + '\'' +
                ", configGroup='" + configGroup + '\'' +
                '}';
    }
}
