package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.LaboratorySchedule;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SaveLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SearchLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import javax.servlet.http.HttpSession;

/**
 * 实验室预定 服务类
 * @author TangShengYu
 * @since 2018-05-13
 */
public interface LaboratoryScheduleService extends IService<LaboratorySchedule> {

    // 申请预定实验室
    BaseVO addLaboratorySchedule(HttpSession httpSession, SaveLaboratoryScheduleDTO saveLaboratoryScheduleDTO);

    // 审批预定
    BaseVO acceptById(HttpSession httpSession, Long id, Integer scheduleStatus);

    // 查询所有预定
    BaseVO getLaboratoryScheduleList(SearchLaboratoryScheduleDTO searchLaboratoryScheduleDTO);

}
