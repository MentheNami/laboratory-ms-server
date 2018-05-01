package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.UserInfo;
import org.cqtguniversity.lqms.mapper.UserInfoMapper;
import org.cqtguniversity.lqms.service.UserInfoService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {
	
}
