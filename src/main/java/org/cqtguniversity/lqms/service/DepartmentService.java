package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Department;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.department.SaveDepartmentDTO;
import org.cqtguniversity.lqms.pojo.dto.department.SearchDepartmentDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * 部门信息 服务类
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface DepartmentService extends IService<Department> {

    // 新增一个部门
    BaseVO addDepartment(SaveDepartmentDTO saveDepartmentDTO);

    // 删除一个部门
    BaseVO removeById(Long id);

    // 更新部门信息
    BaseVO updateDepartment(SaveDepartmentDTO saveDepartmentDTO);

    BaseVO getDepartmentList(SearchDepartmentDTO searchDepartmentDTO);

}
