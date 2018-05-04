package org.cqtguniversity.lqms.pojo.vo.device;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 8:31
 */

public class SimpleDeviceVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 创建时间
     */
    private String gmtCreate;
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
    private String laboratory;
    /**
     * 设备类型
     */
    private String deviceType;
    /**
     * 设备状态
     */
    private String deviceStatus;
    /**
     * 是否在线
     */
    private String isOnline;

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

    public String getLaboratory() {
        return laboratory;
    }

    public void setLaboratory(String laboratory) {
        this.laboratory = laboratory;
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getDeviceStatus() {
        return deviceStatus;
    }

    public void setDeviceStatus(String deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    public String getIsOnline() {
        return isOnline;
    }

    public void setIsOnline(String isOnline) {
        this.isOnline = isOnline;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleDeviceVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", deviceNo='" + deviceNo + '\'' +
                ", deviceName='" + deviceName + '\'' +
                ", laboratory='" + laboratory + '\'' +
                ", deviceType='" + deviceType + '\'' +
                ", deviceStatus='" + deviceStatus + '\'' +
                ", isOnline='" + isOnline + '\'' +
                '}';
    }
}
