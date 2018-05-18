package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Role;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.role.RoleDTO;

/**
 * 用户角色表 服务类
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface RoleService extends IService<Role> {

    RoleDTO selectRoleDTO(Long id);

    RoleDTO selectRoleDTOByName(Long roleName);
}
