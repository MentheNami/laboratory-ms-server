package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SaveConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SaveLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.LaboratoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 实验室表 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "实验室相关接口")
// @RestController返回数据， @Controller 返回视图
@RestController
@RequestMapping("/laboratory")
public class LaboratoryController {

    private final LaboratoryService laboratoryService;

    @Autowired
    public LaboratoryController(LaboratoryService laboratoryService) {
        this.laboratoryService = laboratoryService;
    }

    @ApiOperation(value = "新增实验室")
    @PostMapping(value = "/addLaboratory")
    public BaseVO addLaboratory(SaveLaboratoryDTO saveLaboratoryDTO) {
        return laboratoryService.addLaboratory(saveLaboratoryDTO);
    }

    @ApiOperation(value = "删除实验室通过id")
    @PostMapping(value = "/removeById")
    public BaseVO removeById(Long id) {
        return laboratoryService.removeById(id);
    }

    @ApiOperation(value = "更新实验室")
    @PostMapping(value = "/updateLaboratory")
    public BaseVO updateLaboratory(SaveLaboratoryDTO saveLaboratoryDTO) {
        return laboratoryService.updateLaboratory(saveLaboratoryDTO);
    }

    @ApiOperation(value = "查询实验室详情")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return laboratoryService.selectById(id);
    }

    @ApiOperation(value = "查询实验室列表")
    @GetMapping(value = "/getLaboratoryList")
    public BaseVO getLaboratoryList(SearchLaboratoryDTO searchLaboratoryDTO) {
        return laboratoryService.getLaboratoryList(searchLaboratoryDTO);
    }

}
