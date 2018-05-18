package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.entity.LaboratorySchedule;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SaveLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SearchLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SimpleSearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.LaboratoryScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * 实验室预定时间表 前端控制器
 * @author TangShengYu
 * @since 2018-05-13
 */
@Api(description = "实验室预定时间接口")
@RestController
@RequestMapping("/laboratorySchedule")
public class LaboratoryScheduleController {

    private final LaboratoryScheduleService laboratoryScheduleService;

    @Autowired
    public LaboratoryScheduleController(LaboratoryScheduleService laboratoryScheduleService) {
        this.laboratoryScheduleService = laboratoryScheduleService;
    }

    @ApiOperation(value = "申请实验室预定")
    @PostMapping(value = "/addLaboratorySchedule")
    public BaseVO addLaboratorySchedule(HttpSession httpSession, SaveLaboratoryScheduleDTO saveLaboratoryScheduleDTO) {
        return laboratoryScheduleService.addLaboratorySchedule(httpSession, saveLaboratoryScheduleDTO);
    }

    @ApiOperation(value = "审批实验室申请")
    @PostMapping(value = "/acceptById")
    public BaseVO acceptById(HttpSession httpSession, Long id, Boolean isAccept) {
        return laboratoryScheduleService.acceptById(httpSession, id, isAccept);
    }

    @ApiOperation(value = "查询实验室时间表列表")
    @GetMapping(value = "/getLaboratoryScheduleList")
    public BaseVO getLaboratoryScheduleList(SearchLaboratoryScheduleDTO searchLaboratoryScheduleDTO) {
        return laboratoryScheduleService.getLaboratoryScheduleList(searchLaboratoryScheduleDTO);
    }

    @ApiOperation(value = "获取审批之后的列表")
    @GetMapping(value = "/getList")
    public BaseVO getList(SimpleSearchLaboratoryDTO simpleSearchLaboratoryDTO) {
        return laboratoryScheduleService.getList(simpleSearchLaboratoryDTO);
    }
}
