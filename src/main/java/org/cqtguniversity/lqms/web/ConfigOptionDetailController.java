package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.config.SaveConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.dto.config.SearchConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.ConfigOptionDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * 配置选项详情 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "配置选项详情相关接口")
@RestController
@RequestMapping("/configOptionDetail")
public class ConfigOptionDetailController {

    private final ConfigOptionDetailService configOptionDetailService;

    @Autowired
    public ConfigOptionDetailController(ConfigOptionDetailService configOptionDetailService) {
        this.configOptionDetailService = configOptionDetailService;
    }

    @ApiOperation(value = "修改单个配置")
    @PostMapping(value = "updateOptionDetail")
    public BaseVO updateOptionDetail(Integer id, String optionName, String optionValue){
        return configOptionDetailService.updateOptionDetail(id, optionName, optionValue);
    }

    @ApiOperation(value = "增加单个配置")
    @PostMapping(value = "addOptionDetail")
    public BaseVO addOptionDetail(SaveConfigOptionDTO configOptionDetail){
        return configOptionDetailService.addOptionDetail(configOptionDetail);
    }

    @ApiOperation(value = "删除单个配置")
    @PostMapping(value = "deleteOptionDetail")
    public BaseVO deleteOptionDetail(Integer id){
        return configOptionDetailService.deleteOptionDetail(id);
    }

    @ApiOperation(value = "获取单个配置详细信息")
    @GetMapping(value = "selectById")
    public BaseVO selectById(Long id) {
        return configOptionDetailService.selectById(id);
    }

    @ApiOperation(value = "分页查询所有配置")
    @GetMapping(value = "selectConfigOptionList")
    public BaseVO selectConfigOptionList(SearchConfigOptionDTO searchConfigOptionDTO) {
        return configOptionDetailService.selectConfigOptionList(searchConfigOptionDTO);
    }

    @ApiOperation(value = "根据配置组Id获取配置选项")
    @GetMapping(value = "selectByGroupId")
    public BaseVO selectByGroupId(Long groupId) {
        return configOptionDetailService.selectByGroupId(groupId);
    }
}
