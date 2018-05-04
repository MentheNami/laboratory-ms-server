package org.cqtguniversity.lqms.pojo.dto.divece;

import com.baomidou.mybatisplus.annotations.TableField;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 8:20
 */

public class SearchDeviceDTO extends SearchDTO {

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
    /**
     * 设备状态
     */
    private Long deviceStatus;
    /**
     * 是否在线
     */
    private Integer isOnline;

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

    public Long getDeviceStatus() {
        return deviceStatus;
    }

    public void setDeviceStatus(Long deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    public Integer getIsOnline() {
        return isOnline;
    }

    public void setIsOnline(Integer isOnline) {
        this.isOnline = isOnline;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchDeviceDTO{" +
                "deviceName='" + deviceName + '\'' +
                ", laboratory=" + laboratory +
                ", deviceType=" + deviceType +
                ", deviceStatus=" + deviceStatus +
                ", isOnline=" + isOnline +
                '}';
    }
}
