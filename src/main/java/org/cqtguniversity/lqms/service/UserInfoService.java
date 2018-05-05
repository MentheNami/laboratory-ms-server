package org.cqtguniversity.lqms.service;

import com.sun.prism.impl.BaseMeshView;
import org.cqtguniversity.lqms.entity.UserInfo;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SaveUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SearchUserInfoDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * 用户表 服务类
 * @author Wang26211
 * @since 2018-05-01
 */
public interface UserInfoService extends IService<UserInfo> {

    // 获取一个用户信息
    Long getUserInfo(String cellPhone);

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
