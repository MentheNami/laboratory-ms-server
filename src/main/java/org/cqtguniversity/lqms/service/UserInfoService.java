package org.cqtguniversity.lqms.service;

import com.sun.prism.impl.BaseMeshView;
import org.cqtguniversity.lqms.entity.UserInfo;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SaveUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SearchUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.UserInfoVO;

import java.util.List;

/**
 * 用户表 服务类
 * @author Wang26211
 * @since 2018-05-01
 */
public interface UserInfoService extends IService<UserInfo> {

    // 通过手机号注册一个用户
    Long getUserInfo(String cellPhone);

    // 获取一个用户的信息
    UserInfoDTO selectUserInfoDTO(Long id);

    List<Long> selectIdsByRealName(String realName);

    UserInfoVO selectByUserName(String userName);
	//增加用户
    BaseVO addUserInfo (SaveUserInfoDTO saveUserInfoDTO);
    //删除用户通过IDS
    BaseVO removeByIds (Long[] ids);
    //修改用户信息
    BaseVO updateUserInfo (SaveUserInfoDTO saveUserInfoDTO);
    //查询用户详情通过Id
    BaseVO selectById(Long id);
    //查询用户列表
    BaseVO getUserInfoList(SearchUserInfoDTO searchUserInfoDTO);
}
