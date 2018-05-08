package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Device;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.divece.DeviceDTO;
import org.cqtguniversity.lqms.pojo.dto.divece.SaveDeviceDTO;
import org.cqtguniversity.lqms.pojo.dto.divece.SearchDeviceDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * 设备表 服务类
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface DeviceService extends IService<Device> {

    // 新增设备
    BaseVO addDevice(SaveDeviceDTO saveDeviceDTO);

    // 通过Ids进行批量删除设备
    BaseVO removeByIds(Long[] ids);

    // 更新设备信息
    BaseVO updateDevice(SaveDeviceDTO saveDeviceDTO);

    // 查询设备信息详情
    BaseVO selectById(Long id);

    DeviceDTO selectDeviceDTO(Long id);

    BaseVO selectDetail(Long id);

    // 查询设备信息列表
	BaseVO getDeviceList(SearchDeviceDTO searchDeviceDTO);
}
