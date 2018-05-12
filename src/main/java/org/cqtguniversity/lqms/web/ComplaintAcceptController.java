package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SaveComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.ComplaintAcceptService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * 投诉受理表 前端控制器
 * @author TangShengYu
 * @since 2018-04-30
 */
@Api(description = "投诉受理接口")
@RestController
@RequestMapping("/complaintAccept")
public class ComplaintAcceptController {

    private final ComplaintAcceptService complaintAcceptService;

    public ComplaintAcceptController(ComplaintAcceptService complaintAcceptService) {
        this.complaintAcceptService = complaintAcceptService;
    }

    @ApiOperation(value = "处理投诉")
    @PostMapping(value = "/handlingComplaint")
    public BaseVO handlingComplaint(HttpSession httpSession, SaveComplaintAcceptDTO saveComplaintAcceptDTO) {
        return complaintAcceptService.handlingComplaint(httpSession, saveComplaintAcceptDTO);
    }
}
