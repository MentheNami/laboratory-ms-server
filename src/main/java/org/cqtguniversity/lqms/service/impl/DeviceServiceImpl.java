package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Device;
import org.cqtguniversity.lqms.mapper.DeviceMapper;
import org.cqtguniversity.lqms.service.DeviceService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 设备表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class DeviceServiceImpl extends ServiceImpl<DeviceMapper, Device> implements DeviceService {
	
}
