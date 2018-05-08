package org.cqtguniversity.lqms.web;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Tangshengyu
 * @create 2018- 05- 08- 3:21
 */
@Api(description = "公共接口")
@RestController
@RequestMapping("/common")
public class CommonController {

    private final CommonService commonService;

    @Autowired
    public CommonController(CommonService commonService) {
        this.commonService = commonService;
    }

    //@ApiOperation(value = "新增长文本")
    //@GetMapping(value = "/addCommonContent")
    //public BaseVO addCommonContent(SaveCommonContentDTO saveCommonContentDTO) {
    //    return commonContentService.addCommonContent(saveCommonContentDTO);
    //}

}
