package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SaveLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SaveNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SearchNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 编号规则 前端控制器
 * </p>
 *
 * @author Wang26211
 * @since 2018-04-30
 */
@Api(description = "编号规则相关接口")
// @RestController返回数据， @Controller 返回视图
@RestController
@RequestMapping("/numberRule")
public class NumberRuleController {
    //引用NumberRuleService
	private  final NumberRuleService numberRuleService;

    @Autowired
    public NumberRuleController(NumberRuleService numberRuleService) {
        this.numberRuleService = numberRuleService;
    }
    @ApiOperation(value = "新增编号规则")
    @PostMapping(value = "/addNumberRule")
    public BaseVO addNumberRule(SaveNumberRuleDTO saveNumberRuleDTO) {
        return numberRuleService.addNumberRule(saveNumberRuleDTO);
    }

    @ApiOperation(value = "删除编号规则通过IDS")
    @PostMapping(value = "/removeByIds")
    public BaseVO removeByIds(Long[] ids) {
        return numberRuleService.removeByIds(ids);
    }

    @ApiOperation(value = "更新编号规则")
    @PostMapping(value = "/updateNumberRule")
    public BaseVO updateNumberRule(SaveNumberRuleDTO saveNumberRuleDTO) {
        return numberRuleService.updateNumberRule(saveNumberRuleDTO);
    }
    @ApiOperation(value = "查询编号规则详情")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return numberRuleService.selectById(id);
    }

    @ApiOperation(value = "查询编号规则列表")
    @GetMapping(value = "/getNumberRule")
    public BaseVO getNumberRuleList(SearchNumberRuleDTO searchNumberRuleDTO) {
        return numberRuleService.getNumberRuleList(searchNumberRuleDTO);
    }
}
