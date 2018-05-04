package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.AttachedFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件表 前端控制器
 * @author Wang26211
 * @since 2018-05-04
 */
@Api(description = "文件相关接口")
@RestController
@RequestMapping("/attachedFile")
public class AttachedFileController {

    @Autowired
    private AttachedFileService attachedFileService;

    @ApiOperation(value = "上传文件")
    @PostMapping(value = "/uploadFile")
    public BaseVO uploadFile(MultipartFile multipartFile){
        return attachedFileService.uploadAttachedFile(multipartFile);
    }
	
}
