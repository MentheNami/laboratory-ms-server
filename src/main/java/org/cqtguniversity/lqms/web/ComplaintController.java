package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SaveLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.ComplaintService;
import org.cqtguniversity.lqms.service.LaboratoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

/**
 * 投诉表 前端控制器
 *
 * @author Wang26211
 * @since 2018-05-02
 */
@Api(description = "投诉相关接口")
@RestController
@RequestMapping("/complaint")
public class ComplaintController {
    private final ComplaintService complaintService;

    @Autowired
    public ComplaintController(ComplaintService complaintService) {
        this.complaintService = complaintService;
    }

    @ApiOperation(value = "新增投诉")
    @PostMapping(value = "/addComplaint")
    public BaseVO addComplaint(SaveComplaintDTO saveComplaintDTO) {
        return complaintService.addComplaint(saveComplaintDTO);
    }

    @ApiOperation(value = "删除投诉通过ID")
    @PostMapping(value = "/removeById")
    public BaseVO removeById(Long id) {
        return complaintService.removeById(id);
    }

    @ApiOperation(value = "更新投诉")
    @PostMapping(value = "/updateComplaint")
    public BaseVO updateComplaint(SaveComplaintDTO saveComplaintDTO) {
        return complaintService.updateComplaint(saveComplaintDTO);
    }

    @ApiOperation(value = "查询投诉详情")
    @GetMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return complaintService.selectById(id);
    }

    @ApiOperation(value = "查询投诉列表")
    @GetMapping(value = "/getComplaintList")
    public BaseVO getComplaintList(SearchComplaintDTO searchComplaintDTO) {
        return complaintService.getComplaintList(searchComplaintDTO);
    }
}
