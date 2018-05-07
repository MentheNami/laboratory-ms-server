package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.UserAccount;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SaveUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SearchUserAccountDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 用户账户表 服务类
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-01
 */
public interface UserAccountService extends IService<UserAccount> {

    BaseVO login(String userName, String password, HttpSession httpSession);

	//增加用户账户
    BaseVO addUserAccount(SaveUserAccountDTO saveUserAccountDTO);
    //删除用户账户通过IDS
    BaseVO removeByIds(Long[] Ids);
    //修改用户账户
    BaseVO updateUserAccount(SaveUserAccountDTO saveUserAccountDTO);
    //查询用户账户详情通过ID
    BaseVO selectById(Long id);
    //查询用户列表
    BaseVO getUserAccountList(SearchUserAccountDTO searchUserAccountDTO);
}
