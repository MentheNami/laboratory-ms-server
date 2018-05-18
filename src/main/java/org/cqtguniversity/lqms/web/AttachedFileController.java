package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.entity.AttachedFile;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SaveComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.dto.file.SaveAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.dto.file.SearchAttachedFileDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.AttachedFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 文件表 前端控制器
 * @author Wang26211
 * @since 2018-05-04
 */
@Api(description = "文件相关接口")
@RestController
@RequestMapping("/attachedFile")
public class AttachedFileController {

    private final AttachedFileService attachedFileService;

    @Autowired
    public AttachedFileController(AttachedFileService attachedFileService) {
        this.attachedFileService = attachedFileService;
    }

    @ApiOperation(value = "上传文件")
    @PostMapping(value = "/uploadAttachedFile")
    public BaseVO uploadAttachedFile(@RequestParam("file") MultipartFile multipartFile, SaveAttachedFileDTO saveAttachedFileDTO, HttpSession httpSession){
        return attachedFileService.uploadAttachedFile(multipartFile, saveAttachedFileDTO, httpSession);
    }

    @ApiOperation(value = "下载文件")
    @GetMapping(value = "/downloadFile")
    public ResponseEntity<InputStreamResource> downloadFile(Long id) throws IOException {
        return attachedFileService.downloadFile(id);
    }

    @ApiOperation(value = "获取文件列表")
    @GetMapping(value = "/getAttachedFileList")
    public BaseVO getAttachedFileList(SearchAttachedFileDTO searchAttachedFileDTO) {
        return attachedFileService.getAttachedFileList(searchAttachedFileDTO);
    }

    @ApiOperation(value = "删除文件")
    @PostMapping(value = "/removeById")
    public BaseVO removeById(Long id) {
        return attachedFileService.removeById(id);
    }
	
}
