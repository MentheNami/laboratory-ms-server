package org.cqtguniversity.lqms.pojo.vo;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 11:41
 */

public class KeyAndValueVO extends BaseVO {

    private String name;
    private String value;

    public KeyAndValueVO() {
    }

    public KeyAndValueVO(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
