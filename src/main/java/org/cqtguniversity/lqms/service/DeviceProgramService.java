package org.cqtguniversity.lqms.service;

import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.entity.DeviceProgram;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.AcceptDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SaveDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SearchDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 设备方案申请 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface DeviceProgramService extends IService<DeviceProgram> {

    //新增设备方案
    BaseVO addDeviceProgram(HttpSession httpSession, SaveDeviceProgramDTO saveDeviceProgramDTO);

    // 设备方案审批
    BaseVO acceptDeviceProgram(HttpSession httpSession, AcceptDeviceProgramDTO acceptDeviceProgramDTO);

    //删除设备通过Id
    BaseVO removeById(Long id);

    //修改设备方案
    BaseVO updateDeviceProgram(SaveDeviceProgramDTO saveDeviceProgramDTO);

    //查询方案详情通过id
    BaseVO selectById(Long id);

    //查询方案列表
    BaseVO getDeviceProgramList(SearchDeviceProgramDTO searchDeviceProgramDTO);

}
