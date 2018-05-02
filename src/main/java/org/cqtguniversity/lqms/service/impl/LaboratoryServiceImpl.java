package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.cqtguniversity.lqms.entity.Laboratory;
import org.cqtguniversity.lqms.mapper.LaboratoryMapper;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SaveLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.laboratory.LaboratoryVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.LaboratoryService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * <p>
 * 实验室表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class LaboratoryServiceImpl extends ServiceImpl<LaboratoryMapper, Laboratory> implements LaboratoryService {

    private final LaboratoryMapper laboratoryMapper;

    @Autowired
    public LaboratoryServiceImpl(LaboratoryMapper laboratoryMapper) {
        this.laboratoryMapper = laboratoryMapper;
    }

    @Override
    public BaseVO addLaboratory(SaveLaboratoryDTO saveLaboratoryDTO) {
        // 合理性判断
        if (null != saveLaboratoryDTO.getId() || StringUtils.isEmpty(saveLaboratoryDTO.getLaboratoryName())
                || null == saveLaboratoryDTO.getFloor() || null == saveLaboratoryDTO.getCapacity()
                || null == saveLaboratoryDTO.getIsAutonomy()) {
            // 返回一个参数错误VO的实例
            return ParamErrorVO.getInstance();
        }
        // 合理性通过
        Laboratory laboratory = new Laboratory();
        // 复制实验室基本信息
        BeanUtils.copyProperties(saveLaboratoryDTO, laboratory, "id");
        laboratory.setGmtCreate(Calendar.getInstance().getTime());
        laboratory.setGmtModified(Calendar.getInstance().getTime());
        // 逻辑删除
        laboratory.setIsDeleted(0);
        // 插入数据
        laboratoryMapper.insert(laboratory);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeById(Long id) {
        // 合理性判断
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        // 因为是逻辑删除，所以需要查询是否存在
        Laboratory laboratory = laboratoryMapper.selectById(id);
        if (laboratory == null || 1 == laboratory.getIsDeleted()) {
            return new ErrorVO("实验室不存在");
        }
        laboratory.setGmtModified(Calendar.getInstance().getTime());
        laboratory.setIsDeleted(1);
        laboratoryMapper.updateById(laboratory);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateLaboratory(SaveLaboratoryDTO saveLaboratoryDTO) {
        // 合理性判断
        if (null == saveLaboratoryDTO.getId() || StringUtils.isEmpty(saveLaboratoryDTO.getLaboratoryName())
                || null == saveLaboratoryDTO.getFloor() || null == saveLaboratoryDTO.getCapacity()
                || null == saveLaboratoryDTO.getIsAutonomy()) {
            // 返回一个参数错误VO的实例
            return ParamErrorVO.getInstance();
        }
        // 合理性通过
        Laboratory laboratory = new Laboratory();
        // 复制实验室基本信息
        BeanUtils.copyProperties(saveLaboratoryDTO, laboratory);
        laboratory.setGmtModified(Calendar.getInstance().getTime());
        laboratoryMapper.updateById(laboratory);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        // 合理性判断
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        Laboratory laboratory = laboratoryMapper.selectById(id);
        if (null == laboratory || 1 == laboratory.getIsDeleted()) {
            return new ErrorVO("实验室不存在");
        }
        LaboratoryVO laboratoryVO = new LaboratoryVO();
        BeanUtils.copyProperties(laboratory, laboratoryVO, "gmtCreate", "gmt_modified", "isDeleted");
        return new DetailResultVO(laboratoryVO);
    }

    @Override
    public BaseVO getLaboratoryList(SearchLaboratoryDTO searchLaboratoryDTO) {
        // 合理性判断
        if (!searchLaboratoryDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Laboratory> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("is_deleted={0}", 0);
        // 增加模糊查询条件
        if (!StringUtils.isEmpty(searchLaboratoryDTO.getLaboratoryName())) {
            entityWrapper.like("laboratory_name", searchLaboratoryDTO.getLaboratoryName());
        }
        if (null != searchLaboratoryDTO.getFloor()) {
            entityWrapper.like("floor", searchLaboratoryDTO.getFloor().toString());
        }
        int total = laboratoryMapper.selectCount(entityWrapper);
        if (0 != total) {
            Page page = new Page(searchLaboratoryDTO.getPage(), searchLaboratoryDTO.getRows());
            List<Laboratory> laboratoryList = laboratoryMapper.selectPage(page, entityWrapper);
            if (null != laboratoryList && 0 != laboratoryList.size()) {
                return new ListVO<>(laboratoryList);
            }
        }
        return new ListVO<>(new ArrayList<>());
    }
}
