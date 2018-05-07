package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Role;
import org.cqtguniversity.lqms.mapper.RoleMapper;
import org.cqtguniversity.lqms.pojo.dto.role.RoleDTO;
import org.cqtguniversity.lqms.service.RoleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

/**
 * <p>
 * 用户角色表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    private Role selectRole(Long id) {
        return roleMapper.selectById(id);
    }

    @Override
    public RoleDTO selectRoleDTO(Long id) {
        Assert.notNull(id, "role id must not is null");
        Role role =  selectRole(id);
        if (null == role) {
            System.out.println("存在错误的用户角色id: " + id + ", 请检查用户角色表");
            return null;
        }
        RoleDTO roleDTO = new RoleDTO();
        BeanUtils.copyProperties(role, roleDTO);
        return roleDTO;
    }
}
