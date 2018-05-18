package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.EducationRecordService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * 人员学历及学位记录 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "人员学历及学位记录接口")
@RestController
@RequestMapping("/educationRecord")
public class EducationRecordController {

    private final EducationRecordService educationRecordService;

    public EducationRecordController(EducationRecordService educationRecordService) {
        this.educationRecordService = educationRecordService;
    }

    @ApiOperation(value = "基本用户变更实验室用户")
    @PostMapping(value = "/addLaboratoryUser")
    public BaseVO addLaboratoryUser(SaveEducationRecordDTO saveEducationRecordDTO) {
        return educationRecordService.addLaboratoryUser(saveEducationRecordDTO);
    }

    @ApiOperation(value = "获取个人档案学历")
    @GetMapping(value = "/getSelfEducationRecord")
    public BaseVO getSelfEducationRecord(HttpSession httpSession) {
        return educationRecordService.getSelfEducationRecord(httpSession);
    }

}
