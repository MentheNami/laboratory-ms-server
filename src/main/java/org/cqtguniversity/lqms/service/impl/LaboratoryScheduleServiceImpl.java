package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.LaboratorySchedule;
import org.cqtguniversity.lqms.mapper.LaboratoryScheduleMapper;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.LaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SaveLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SearchLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.laboratoryschedule.LaboratoryScheduleFontVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.LaboratoryScheduleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.service.LaboratoryService;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-13
 */
@Service
public class LaboratoryScheduleServiceImpl extends ServiceImpl<LaboratoryScheduleMapper, LaboratorySchedule> implements LaboratoryScheduleService {

    @Autowired
    private LaboratoryScheduleMapper laboratoryScheduleMapper;

    @Autowired
    private LaboratoryService laboratoryService;

    @Override
    public BaseVO addLaboratorySchedule(HttpSession httpSession, SaveLaboratoryScheduleDTO saveLaboratoryScheduleDTO) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (null == saveLaboratoryScheduleDTO.getEndTime() || StringUtils.isEmpty(saveLaboratoryScheduleDTO.getInstruction())
                || null == saveLaboratoryScheduleDTO.getLaboratoryId() || null == saveLaboratoryScheduleDTO.getStartTime()) {
            return ParamErrorVO.getInstance();
    }
        if (saveLaboratoryScheduleDTO.getEndTime().before(saveLaboratoryScheduleDTO.getStartTime())) {
            return new ErrorVO("结束时间早于开始时间");
        }
        if (!MyDateUtil.isEqual(saveLaboratoryScheduleDTO.getStartTime(), saveLaboratoryScheduleDTO.getEndTime())) {
            return new ErrorVO("预定只能在当天时间段内");
        }
        // 获取实验室
        LaboratoryDTO laboratoryDTO = laboratoryService.selectLaboratoryDTO(saveLaboratoryScheduleDTO.getLaboratoryId());
        if (null == laboratoryDTO) {
            return new ErrorVO("实验室不存在");
        }
        EntityWrapper<LaboratorySchedule> entityWrapper = new EntityWrapper<>();
        // 查询预定开始时间当天所有预定
        entityWrapper.where("datediff(start_time, {0})", saveLaboratoryScheduleDTO.getStartTime());
        entityWrapper.where("laboratory_id={0}", saveLaboratoryScheduleDTO.getLaboratoryId());
        // 查询未处理和已预定的
        List<Integer> statusList = new ArrayList<>();
        statusList.add(1);
        statusList.add(2);
        entityWrapper.in("schedule_status", statusList);
        List<LaboratorySchedule> laboratoryScheduleList = laboratoryScheduleMapper.selectList(entityWrapper);
        // 循环当前所有预定
        for (LaboratorySchedule laboratorySchedule:laboratoryScheduleList
             ) {
            if ((laboratorySchedule.getStartTime().before(saveLaboratoryScheduleDTO.getStartTime())) && saveLaboratoryScheduleDTO.getStartTime().before(laboratorySchedule.getEndTime())
                || (laboratorySchedule.getStartTime().before(saveLaboratoryScheduleDTO.getEndTime())) && saveLaboratoryScheduleDTO.getEndTime().before(laboratorySchedule.getEndTime())) {
                return new ErrorVO("与其它预定冲突");
            }
        }
        // 合法性通过
        LaboratorySchedule laboratorySchedule = new LaboratorySchedule();
        // 判断是否为自主预定
        if (1 == laboratoryDTO.getIsAutonomy()) {
            // 审核用户为0 代表自主预定
            laboratorySchedule.setCheckUser(0L);
            // 同意审批
            laboratorySchedule.setScheduleStatus(1);
        } else {
            laboratorySchedule.setScheduleStatus(0);
        }
        laboratorySchedule.setEndTime(saveLaboratoryScheduleDTO.getEndTime());
        laboratorySchedule.setStartTime(saveLaboratoryScheduleDTO.getStartTime());
        laboratorySchedule.setLaboratoryId(saveLaboratoryScheduleDTO.getLaboratoryId());
        laboratorySchedule.setInstruction(saveLaboratoryScheduleDTO.getInstruction());
        laboratorySchedule.setUserId(sessionDTO.getUserInfoDTO().getId());
        Calendar calendar = Calendar.getInstance();
        laboratorySchedule.setGmtCreate(calendar.getTime());
        laboratorySchedule.setGmtModified(calendar.getTime());
        laboratorySchedule.insert();
        return new SuccessVO("实验室预定成功");
    }

    @Override
    public BaseVO acceptById(HttpSession httpSession, Long id, Integer scheduleStatus) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        LaboratorySchedule laboratorySchedule = laboratoryScheduleMapper.selectById(id);
        if (null == laboratorySchedule) {
            return new ErrorVO("该预定记录不存在");
        }
        Calendar calendar = Calendar.getInstance();
        if (calendar.getTime().before(laboratorySchedule.getStartTime())) {
            return new ErrorVO("该预定记录已过期");
        }
        if (0 != laboratorySchedule.getScheduleStatus()) {
            return new ErrorVO("状态错误，该预定记录已审批");
        }
        laboratorySchedule.setGmtModified(calendar.getTime());
        laboratorySchedule.setScheduleStatus(scheduleStatus);
        laboratorySchedule.setCheckUser(sessionDTO.getUserInfoDTO().getId());
        laboratorySchedule.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO getLaboratoryScheduleList(SearchLaboratoryScheduleDTO searchLaboratoryScheduleDTO) {
        if (null == searchLaboratoryScheduleDTO.getLaboratoryId() || null == searchLaboratoryScheduleDTO.getStartTime()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<LaboratorySchedule> entityWrapper = new EntityWrapper<>();
        List<Integer> statusList = new ArrayList<>();
        statusList.add(1);
        statusList.add(2);
        entityWrapper.in("schedule_status", statusList);
        entityWrapper.where("laboratory_id={0}", searchLaboratoryScheduleDTO.getLaboratoryId());
        entityWrapper.where("datediff(start_time, {0})", searchLaboratoryScheduleDTO.getStartTime());
        List<LaboratorySchedule> laboratoryScheduleList = laboratoryScheduleMapper.selectList(entityWrapper);
        List<LaboratoryScheduleFontVO> laboratoryScheduleFontVOList = new ArrayList<>();
        if (null != laboratoryScheduleList && 0 != laboratoryScheduleList.size()) {
            LaboratoryScheduleFontVO laboratoryScheduleFontVO = new LaboratoryScheduleFontVO();
            for (LaboratorySchedule laboratorySchedule:laboratoryScheduleList
                    ) {
                for (Integer i = MyDateUtil.getPeriod(laboratorySchedule.getStartTime()); i < MyDateUtil.getPeriod(laboratorySchedule.getEndTime()); i++) {
                    laboratoryScheduleFontVO.setId(laboratorySchedule.getId());
                    laboratoryScheduleFontVO.setStatus(laboratorySchedule.getScheduleStatus());
                    laboratoryScheduleFontVO.setPeriod(i);
                }
                laboratoryScheduleFontVOList.add(laboratoryScheduleFontVO);
            }
            return new ListVO<>(laboratoryScheduleFontVOList);
        }
        return new ListVO<>(new ArrayList<>());
    }

}
