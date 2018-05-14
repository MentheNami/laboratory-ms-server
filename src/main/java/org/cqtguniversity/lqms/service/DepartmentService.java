package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Department;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.department.SaveDepartmentDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * <p>
 * 部门信息 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface DepartmentService extends IService<Department> {

    // 新增一个部门
    BaseVO addDepartment(SaveDepartmentDTO saveDepartmentDTO);

}
