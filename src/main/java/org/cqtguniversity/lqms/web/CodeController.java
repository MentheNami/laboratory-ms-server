package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.CodeService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 验证码表 前端控制器
 * @author TangShengYu
 * @since 2018-05-07
 */
@Api(description = "验证码相关接口")
@RestController
@RequestMapping("/code")
public class CodeController {

    private final CodeService codeService;

    public CodeController(CodeService codeService) {
        this.codeService = codeService;
    }

    @ApiOperation(value = "获取验证码")
    @PostMapping(value = "/getCode")
    public BaseVO getCode(String cellPhone) {
        return codeService.getCode(cellPhone);
    }
}
