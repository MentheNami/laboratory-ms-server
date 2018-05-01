package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.UserAccount;
import org.cqtguniversity.lqms.mapper.UserAccountMapper;
import org.cqtguniversity.lqms.service.UserAccountService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户账户表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Service
public class UserAccountServiceImpl extends ServiceImpl<UserAccountMapper, UserAccount> implements UserAccountService {
	
}
