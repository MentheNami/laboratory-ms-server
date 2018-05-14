package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Department;
import org.cqtguniversity.lqms.mapper.DepartmentMapper;
import org.cqtguniversity.lqms.pojo.dto.department.SaveDepartmentDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.service.DepartmentService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Calendar;

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

    @Override
    public BaseVO addDepartment(SaveDepartmentDTO saveDepartmentDTO) {
        // 合法性校验
        if (null != saveDepartmentDTO.getId() || null != saveDepartmentDTO.getPrincipal()
                || StringUtils.isEmpty(saveDepartmentDTO.getDepartmentName())) {
            return ParamErrorVO.getInstance();
        }
        Department department = new Department();
        department.setDepartmentName(saveDepartmentDTO.getDepartmentName());
        Calendar calendar = Calendar.getInstance();
        department.setGmtCreate(calendar.getTime());
        department.setGmtModified(calendar.getTime());
        department.setPrincipal(saveDepartmentDTO.getPrincipal());
        return null;
    }
}
