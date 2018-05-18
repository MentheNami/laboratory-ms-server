package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.CommonContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 长文本表 前端控制器
 * @author Wang26211
 * @since 2018-04-30
 */
@Api(description = "长文本表相关接口")
@RestController
@RequestMapping("/commonContent")
public class CommonContentController {
    private final CommonContentService commonContentService;

    @Autowired
    public CommonContentController(CommonContentService commonContentService) {
        this.commonContentService = commonContentService;
    }

    @ApiOperation(value = "新增长文本")
    @PostMapping(value = "/addCommonContent")
    public BaseVO addCommonContent(SaveCommonContentDTO saveCommonContentDTO) {
        return commonContentService.addCommonContent(saveCommonContentDTO);
    }

    @ApiOperation(value = "删除长文本通过ID")
    @PostMapping(value = "/removeById")
    public BaseVO removeById(Long id) {
        return commonContentService.removeById(id);
    }

    //@ApiOperation(value = "更新长文本")
    //@PostMapping(value = "/updateCommonContent")
    //public BaseVO updateCommonContent(SaveCommonContentDTO saveCommonContentDTO) {
    //    return commonContentService.updateCommonContent(saveCommonContentDTO);
    //
    //}

    @ApiOperation(value = "查询长文本详情")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return commonContentService.selectById(id);
    }

    @ApiOperation(value = "查询长文本列表")
    @GetMapping(value = "/getCommonContentList")
    public BaseVO getComplaintList(SaveCommonContentDTO saveCommonContentDTO) {
        return commonContentService.getCommonContentList(saveCommonContentDTO);
    }
}
