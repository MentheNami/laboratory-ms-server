package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.Department;
import org.cqtguniversity.lqms.mapper.DepartmentMapper;
import org.cqtguniversity.lqms.pojo.dto.department.SaveDepartmentDTO;
import org.cqtguniversity.lqms.pojo.dto.department.SearchDepartmentDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.department.SimpleDepartmentVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.DepartmentService;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * 部门信息 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    @Autowired
    private UserNodeService userNodeService;

    @Autowired
    private DepartmentMapper departmentMapper;

    @Autowired
    private UserInfoService userInfoService;

    private boolean isUniqueByDepartmentName(String departmentName) {
        EntityWrapper<Department> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("department_name={0}", departmentName);
        return 0 == departmentMapper.selectCount(entityWrapper);
    }

    private boolean isUniqueByPrincipal(Long principal) {
        EntityWrapper<Department> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("principal={0}", principal);
        return 0 == departmentMapper.selectCount(entityWrapper);
    }

    private SimpleDepartmentVO tramsferSimpleDepartmentVO(Department department) {
        SimpleDepartmentVO simpleDepartmentVO = new SimpleDepartmentVO();
        simpleDepartmentVO.setId(department.getId());
        simpleDepartmentVO.setDepartmentName(department.getDepartmentName());
        simpleDepartmentVO.setGmtCreate(MyDateUtil.simpleDateFormat(department.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        simpleDepartmentVO.setPrincipal(userInfoService.selectUserInfoDTO(department.getPrincipal()).getRealName());
        return simpleDepartmentVO;
    }

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

    @Override
    public BaseVO removeById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        // 查询部门下面是否还有人员
        if (!userNodeService.isDeletedByDepartmentId(id)) {
            return new ErrorVO("该部门存在人员，请先调整该部门下人员");
        }
        // 可以删除部门
        int count = departmentMapper.deleteById(id);
        if (count == 0) {
            return new ErrorVO("该部门已被删除，无需重复操作");
        }
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateDepartment(SaveDepartmentDTO saveDepartmentDTO) {
        // 合法性校验
        if (null == saveDepartmentDTO.getId() || null != saveDepartmentDTO.getPrincipal()
                || StringUtils.isEmpty(saveDepartmentDTO.getDepartmentName())) {
            return ParamErrorVO.getInstance();
        }
        // 判断负责人是否存在
        UserNodeDTO userNodeDTO = userNodeService.selectByUserInfoId(saveDepartmentDTO.getPrincipal());
        if (null == userNodeDTO) {
            return new ErrorVO("用户不存在");
        }
        // 由于用户角色表为系统设置表， 故基本角色2 不可改变， 可写死
        if (2 == userNodeDTO.getRoleId()) {
            return new ErrorVO("基本用户不可直接任命负责人");
        }
        // 判断部门名称是否唯一
        if (!isUniqueByDepartmentName(saveDepartmentDTO.getDepartmentName())) {
            return new ErrorVO("该部门名称已存在");
        }
        // 判断部门负责人是否唯一
        if (!isUniqueByPrincipal(saveDepartmentDTO.getPrincipal())) {
            return new ErrorVO("系统暂不支持负责多部门");
        }
        // 更改部门负责人， 可直接更改， 但是需要变更负责人所属部门
        Department department = new Department();
        department.setId(saveDepartmentDTO.getId());
        department.setPrincipal(saveDepartmentDTO.getPrincipal());
        department.setGmtModified(Calendar.getInstance().getTime());
        department.setDepartmentName(saveDepartmentDTO.getDepartmentName());
        // 更新部门
        department.updateById();
        // 如果负责人不属于该部门，更改负责人所属部门
        if (!Objects.equals(department.getId(), userNodeDTO.getDepartmentId())) {
            userNodeService.updateDepartment(userNodeDTO.getId(), department.getId());
        }
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO getDepartmentList(SearchDepartmentDTO searchDepartmentDTO) {
        // 合法性校验
        if (!searchDepartmentDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Department> entityWrapper = new EntityWrapper<>();
        if (!StringUtils.isEmpty(searchDepartmentDTO.getPrincipal())) {
            List<Long> userIdList = userInfoService.selectIdsByRealName(searchDepartmentDTO.getPrincipal());
            if (null != userIdList && 0 != userIdList.size()) {
                entityWrapper.in("principal", userIdList);
            }
        }
        if (!StringUtils.isEmpty(searchDepartmentDTO.getDepartmentName())) {
            entityWrapper.like("department_name", searchDepartmentDTO.getDepartmentName());
        }
        int total = departmentMapper.selectCount(entityWrapper);
        Page page = new Page(searchDepartmentDTO.getPage(), searchDepartmentDTO.getRows());
        if (0 != total) {
            List<Department> departmentList = departmentMapper.selectPage(page, entityWrapper);
            if (null != departmentList && 0 != departmentList.size()) {
                List<SimpleDepartmentVO> simpleDepartmentVOList = departmentList.stream().map(this::tramsferSimpleDepartmentVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleDepartmentVOList);
            }
        }
        return new ListVO<>(0, page, new ArrayList<>());
    }
}
