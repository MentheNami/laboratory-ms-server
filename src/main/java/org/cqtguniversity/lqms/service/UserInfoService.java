package org.cqtguniversity.lqms.service;

import com.sun.prism.impl.BaseMeshView;
import org.cqtguniversity.lqms.entity.UserInfo;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SaveUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SearchUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.SimpleUserInfoVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.UserInfoVO;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 用户表 服务类
 * @author Wang26211
 * @since 2018-05-01
 */
public interface UserInfoService extends IService<UserInfo> {

    // 通过手机号注册一个用户
    Long getUserInfo(String cellPhone, String email);


    boolean isUnique(String cellPhone);

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

    // 获取个人信息
    BaseVO getSelfInfo(HttpSession httpSession);

    // 获取一个简单的个人信息
    SimpleUserInfoVO getSimpleUserInfoVO(Long id);

    //查询用户列表
    BaseVO getUserInfoList(SearchUserInfoDTO searchUserInfoDTO);
}
