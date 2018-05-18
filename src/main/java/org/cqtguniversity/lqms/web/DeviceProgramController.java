package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.AcceptDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SaveDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SearchDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.DeviceProgramService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * 设备方案申请 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "设备方案申请接口")
@RestController
@RequestMapping("/deviceProgram")
public class DeviceProgramController {

    private final DeviceProgramService deviceProgramService;

    @Autowired
    public DeviceProgramController(DeviceProgramService deviceProgramService) {
        this.deviceProgramService = deviceProgramService;
    }

    @ApiOperation(value = "新增设备方案")
    @PostMapping(value = "/addDeviceProgram")
    public BaseVO addDeviceProgram(HttpSession httpSession, SaveDeviceProgramDTO saveDeviceProgramDTO) {
        return deviceProgramService.addDeviceProgram(httpSession, saveDeviceProgramDTO);
    }

    @ApiOperation(value = "审批设备方案")
    @PostMapping(value = "/acceptDeviceProgram")
    public BaseVO acceptDeviceProgram(HttpSession httpSession, AcceptDeviceProgramDTO acceptDeviceProgramDTO) {
        return deviceProgramService.acceptDeviceProgram(httpSession, acceptDeviceProgramDTO);
    }

    @ApiOperation(value = "删除设备方案通过Id")
    @PostMapping(value = "/removeById")
    public BaseVO removeById(Long id) {
        return deviceProgramService.removeById(id);
    }

    @ApiOperation(value = "修改设备方案")
    @PostMapping(value = "/updateDeviceProgram")
    public BaseVO updateDeviceProgram(SaveDeviceProgramDTO saveDeviceProgramDTO) {
        return deviceProgramService.updateDeviceProgram(saveDeviceProgramDTO);
    }

    @ApiOperation(value = "查询设备方案详情")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return deviceProgramService.selectById(id);
    }

    @ApiOperation(value = "分页查询设备方案列表")
    @GetMapping(value = "/getDeviceProgramList")
    public BaseVO getDeviceProgramList(SearchDeviceProgramDTO searchDeviceProgramDTO) {
        return deviceProgramService.getDeviceProgramList(searchDeviceProgramDTO);
    }

}
