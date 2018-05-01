package org.cqtguniversity.lqms.pojo.vo.config;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 03- 30- 13:44
 */

public class KeyAndValueVO extends BaseVO {

    private String key;
    private String value;

    public KeyAndValueVO() {
    }

    public KeyAndValueVO(String key, String value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return super.toString() + "KeyAndValueVO{" +
                "key='" + key + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
