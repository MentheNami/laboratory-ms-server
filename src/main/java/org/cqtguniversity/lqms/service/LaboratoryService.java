package org.cqtguniversity.lqms.service;

import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.entity.Laboratory;
import org.cqtguniversity.lqms.pojo.dto.laboratory.LaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SaveLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.SearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * 实验室表 服务类
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface LaboratoryService extends IService<Laboratory> {

    // 新增实验室
    BaseVO addLaboratory(SaveLaboratoryDTO saveLaboratoryDTO);

    // 删除实验室通过IDS
    BaseVO removeByIds(Long[] ids);

    // 修改实验室
    BaseVO updateLaboratory(SaveLaboratoryDTO saveLaboratoryDTO);

    // 查询实验室详情
    BaseVO selectById(Long id);

    LaboratoryDTO selectLaboratoryDTO(Long id);

    // 获取实验室列表
    BaseVO getLaboratoryList(SearchLaboratoryDTO searchLaboratoryDTO);

}
