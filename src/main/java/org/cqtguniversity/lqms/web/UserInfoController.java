package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SaveUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SearchUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SaveUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SearchUserInfoDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-01
 */
@Api(description = "用户接口")
@RestController
@RequestMapping("/userInfo")
public class UserInfoController {
	//引用用户服务
    private final UserInfoService userInfoService;

    @Autowired
    public UserInfoController(UserInfoService userInfoService) {
        this.userInfoService = userInfoService;
    }
    @ApiOperation(value = "新增用户")
    @PostMapping(value = "/addUserInfo")
    public BaseVO addUserInfo(SaveUserInfoDTO saveUserInfoDTO) {
        return userInfoService.addUserInfo(saveUserInfoDTO);
    }
    @ApiOperation(value = "删除用户")
    @PostMapping(value = "/removeByIds")
    public BaseVO removeByIds(Long[] ids) {
        return userInfoService.removeByIds(ids);
    }
    @ApiOperation(value = "修改用户")
    @PostMapping(value = "/updateUserInfo")
    public BaseVO updateUserInfo(SaveUserInfoDTO saveUserInfoDTO) {
        return userInfoService.updateUserInfo(saveUserInfoDTO);
    }
    @ApiOperation(value = "查询用户详情")
    @PostMapping(value = "/selectById")
    public BaseVO selectById(Long id) {
        return userInfoService.selectById(id);
    }
    @ApiOperation(value = "查询用户列表")
    @GetMapping(value = "/getUserInfo")
    public BaseVO getUserInfo(SearchUserInfoDTO searchUserAccountDTO) {
        return userInfoService.getUserInfoList(searchUserAccountDTO);
    }
}
