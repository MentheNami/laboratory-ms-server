package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Department;
import org.cqtguniversity.lqms.mapper.DepartmentMapper;
import org.cqtguniversity.lqms.service.DepartmentService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 部门信息 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {
	
}
