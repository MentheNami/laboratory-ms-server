package org.cqtguniversity.lqms.web;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SearchNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SaveUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SearchUserAccountDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.BooleanResultVO;
import org.cqtguniversity.lqms.service.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 用户账户表 前端控制器
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-01
 */
@Api(description = "用户账户接口")
@RestController
@RequestMapping("/userAccount")
public class UserAccountController {
    //引用用户账户服务
	private final UserAccountService userAccountService;
    @Autowired
    public UserAccountController(UserAccountService userAccountService) {
        this.userAccountService = userAccountService;
    }

    @ApiOperation(value = "登录验证")
    @GetMapping(value = "/checkLogin")
    public BaseVO checkLogin(HttpSession httpSession) {
        if (null == httpSession.getAttribute("sessionUserVO")) {
            return new BooleanResultVO(false);
        } else {
            return new BooleanResultVO(true);
        }
    }

    @ApiOperation(value = "登录")
    @PostMapping(value = "/login")
    public BaseVO login(String userName, String password, HttpSession httpSession) {
        return userAccountService.login(userName, password, httpSession);
    }

    @ApiOperation(value = "退出")
    @GetMapping(value = "/quit")
    public BaseVO quit(HttpSession httpSession) {
        return userAccountService.quit(httpSession);
    }

    @ApiOperation(value = "新增用户账户")
    @PostMapping(value = "/addUserAccount")
    public BaseVO addUserAccount(SaveUserAccountDTO saveUserAccountDTO) {
        return userAccountService.addUserAccount(saveUserAccountDTO);
    }
    @ApiOperation(value = "删除投诉通过IDS")
    @PostMapping(value = "/removeByIds")
    public BaseVO removeByIds(Long[] ids) {
        return userAccountService.removeByIds(ids);
    }
    @ApiOperation(value = "修改用户账户")
    @PostMapping(value = "/updateUserAccount")
    public BaseVO updateUserAccount(SaveUserAccountDTO saveUserAccountDTO ) {
        return userAccountService.updateUserAccount(saveUserAccountDTO);
    }
    @ApiOperation(value = "查询用户账户通过ID")
    @PostMapping(value = "/selectById")
    public BaseVO selectById(long id) {
        return userAccountService.selectById(id);
    }

    @ApiOperation(value = "查询用户账户列表")
    @GetMapping(value = "/getUserAccount")
    public BaseVO getUserAccount(SearchUserAccountDTO searchUserAccountDTO) {
        return userAccountService.getUserAccountList(searchUserAccountDTO);
    }
}
