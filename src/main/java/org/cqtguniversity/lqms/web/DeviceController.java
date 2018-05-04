package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
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

    //@ApiOperation(value = "新增设备")
    //@PostMapping(value = "/addComplaint")
    //public BaseVO addComplaint(SaveComplaintDTO saveComplaintDTO) {
    //    return deviceService.addComplaint(saveComplaintDTO);
    //}
}
