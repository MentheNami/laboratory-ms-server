package org.cqtguniversity.lqms.pojo.vo.device;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 8:27
 */

public class DeviceVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 设备编号
     */
    private String deviceNo;
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getDeviceNo() {
        return deviceNo;
    }

    public void setDeviceNo(String deviceNo) {
        this.deviceNo = deviceNo;
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
        return super.toString() + "DeviceVO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", deviceNo='" + deviceNo + '\'' +
                ", deviceName='" + deviceName + '\'' +
                ", laboratory=" + laboratory +
                ", deviceType=" + deviceType +
                ", deviceStatus=" + deviceStatus +
                ", isOnline=" + isOnline +
                '}';
    }
}
