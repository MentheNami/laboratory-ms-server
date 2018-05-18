package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.UniversityService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 大学 前端控制器
 * @author TangShengYu
 * @since 2018-05-13
 */
@Api(description = "大学接口")
@RestController
@RequestMapping("/university")
public class UniversityController {

    private final UniversityService universityService;

    public UniversityController(UniversityService universityService) {
        this.universityService = universityService;
    }

    @ApiOperation(value = "获取大学列表")
    @GetMapping(value = "/getUniversityList")
    public BaseVO getUniversityList(Long provinceId) {
        return universityService.getUniversityList(provinceId);
    }

}
