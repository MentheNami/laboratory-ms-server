package org.cqtguniversity.lqms.pojo.dto.divece;

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 8:19
 */

public class SaveDeviceDTO extends BaseDTO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 设备名称
     */
    private String deviceName;
    /**
     * 所属会议室
     */
    private Long laboratory;
    /**
     * 设备类型
     */
    private Long deviceType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public Long getLaboratory() {
        return laboratory;
    }

    public void setLaboratory(Long laboratory) {
        this.laboratory = laboratory;
    }

    public Long getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(Long deviceType) {
        this.deviceType = deviceType;
    }

    @Override
    public String toString() {
        return super.toString() +"SaveDeviceDTO{" +
                "id=" + id +
                ", deviceName='" + deviceName + '\'' +
                ", laboratory=" + laboratory +
                ", deviceType=" + deviceType +
                '}';
    }
}
