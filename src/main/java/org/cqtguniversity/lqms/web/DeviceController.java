package org.cqtguniversity.lqms.web;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.divece.SaveDeviceDTO;
import org.cqtguniversity.lqms.pojo.dto.divece.SearchDeviceDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 设备表 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "设备相关接口")
@RestController
@RequestMapping("/device")
public class DeviceController {

    // 引入设备服务
    private final DeviceService deviceService;

    // 自动注入相关服务 （构造方法）
    @Autowired
    public DeviceController(DeviceService deviceService) {
        this.deviceService = deviceService;
    }

    @ApiOperation(value = "新增设备")
    @PostMapping(value = "/addDevice")
    public BaseVO addDevice(SaveDeviceDTO saveDeviceDTO) {
        return deviceService.addDevice(saveDeviceDTO);
    }

    @ApiOperation(value = "批量删除设备")
    @PostMapping(value = "/removeByIds")
    public BaseVO removeByIds(Long[] ids) {
        return deviceService.removeByIds(ids);
    }

    @ApiOperation(value = "更新设备")
    @PostMapping(value = "/updateDevice")
    public BaseVO updateDevice(SaveDeviceDTO saveDeviceDTO) {
        return deviceService.updateDevice(saveDeviceDTO);
    }

    @ApiOperation(value = "选择一个设备（用于修改）")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return deviceService.selectById(id);
    }

    @ApiOperation(value = "获取设备详情")
    @GetMapping(value = "/selectDetail")
    public BaseVO selectDetail(Long id) {
        return deviceService.selectDetail(id);
    }

    @ApiOperation(value = "获取设备列表")
    @GetMapping(value = "/getDeviceList")
    public BaseVO getDeviceList(SearchDeviceDTO saveDeviceDTO) {
        return deviceService.getDeviceList(saveDeviceDTO);
    }
}
