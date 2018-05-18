package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SaveConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SearchConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.ConfigOptionGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * 配置选项组 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "配置选项组相关接口")
@RestController
@RequestMapping("/configOptionGroup")
public class ConfigOptionGroupController {

    private final ConfigOptionGroupService configOptionGroupService;

    @Autowired
    public ConfigOptionGroupController(ConfigOptionGroupService configOptionGroupService) {
        this.configOptionGroupService = configOptionGroupService;
    }

    @ApiOperation(value = "新增配置组")
    @PostMapping(value = "/addConfigGroup")
    public BaseVO addConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO) {
        return configOptionGroupService.addConfigGroup(saveConfigGroupDTO);
    }

    @ApiOperation(value = "更新配置组")
    @PostMapping(value = "/updateConfigGroup")
    public BaseVO updateConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO) {
        return configOptionGroupService.updateConfigGroup(saveConfigGroupDTO);
    }

    @ApiOperation(value = "删除配置组")
    @PostMapping(value = "/deleteById")
    public BaseVO deleteById(Long id) {
        return configOptionGroupService.deleteById(id);
    }

    @ApiOperation(value = "获取配置组详情")
    @GetMapping(value = "/getDetailById")
    public BaseVO getDetailById(Long id) {
        return configOptionGroupService.getDetailById(id);
    }

    @ApiOperation(value = "获取所有配置组")
    @GetMapping(value = "/getConfigGroupList")
    public BaseVO getConfigGroupList(SearchConfigGroupDTO searchConfigGroupDTO) {
        return configOptionGroupService.getConfigGroupList(searchConfigGroupDTO);
    }

    @ApiOperation(value = "获取所有配置选项")
    @GetMapping(value = "getConfigOptionList")
    public BaseVO getConfigOptionList() {
        return configOptionGroupService.getConfigOptionList();
    }
	
}
