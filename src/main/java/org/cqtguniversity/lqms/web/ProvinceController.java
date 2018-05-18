package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.ProvinceService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 省份 前端控制器
 * @author TangShengYu
 * @since 2018-05-13
 */
@Api(description = "省份接口")
@RestController
@RequestMapping("/province")
public class ProvinceController {

    private final ProvinceService provinceService;

    public ProvinceController(ProvinceService provinceService) {
        this.provinceService = provinceService;
    }

    @ApiOperation(value = "获取省份列表")
    @GetMapping(value = "/getProvinceList")
    public BaseVO getProvinceList() {
        return provinceService.getProvinceList();
    }
}
