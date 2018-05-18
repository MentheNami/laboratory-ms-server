package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.cqtguniversity.lqms.entity.LaboratorySchedule;
import org.cqtguniversity.lqms.mapper.LaboratoryScheduleMapper;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.LaboratoryDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SaveLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SearchLaboratoryScheduleDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratoryschedule.SimpleSearchLaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.laboratoryschedule.LaboratoryScheduleFontVO;
import org.cqtguniversity.lqms.pojo.vo.laboratoryschedule.SimpleLaboratoryScheduleVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.LaboratoryScheduleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.service.LaboratoryService;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
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

    @Autowired
    private UserInfoService userInfoService;

    private SimpleLaboratoryScheduleVO transferSimpleLaboratoryScheduleVO(LaboratorySchedule laboratorySchedule) {
        SimpleLaboratoryScheduleVO simpleLaboratoryScheduleVO = new SimpleLaboratoryScheduleVO();
        simpleLaboratoryScheduleVO.setId(laboratorySchedule.getId());
        if (null == laboratorySchedule.getCheckUser()) {
            simpleLaboratoryScheduleVO.setCheckUser("");
        } else {
            simpleLaboratoryScheduleVO.setCheckUser(laboratorySchedule.getCheckUser() == 0? "自主预定" : userInfoService.selectUserInfoDTO(laboratorySchedule.getCheckUser()).getRealName());
        }
        simpleLaboratoryScheduleVO.setEndTime(MyDateUtil.simpleDateFormat(laboratorySchedule.getEndTime(), MyDateUtil.YYYY_MM_DD_HH_MM_E));
        simpleLaboratoryScheduleVO.setGmtCreate(MyDateUtil.simpleDateFormat(laboratorySchedule.getStartTime(), MyDateUtil.YYYY_MM_DD_HH_MM_E));
        simpleLaboratoryScheduleVO.setInstruction(laboratorySchedule.getInstruction());
        simpleLaboratoryScheduleVO.setLaboratoryName(laboratoryService.selectLaboratoryDTO(laboratorySchedule.getLaboratoryId()).getLaboratoryName());
        if (0 == laboratorySchedule.getScheduleStatus()) {
            simpleLaboratoryScheduleVO.setScheduleStatus("未审批");
        }
        if (1 == laboratorySchedule.getScheduleStatus()) {
            simpleLaboratoryScheduleVO.setScheduleStatus("同意");
        }
        if (2 == laboratorySchedule.getScheduleStatus()) {
            simpleLaboratoryScheduleVO.setScheduleStatus("驳回");
        }
        if (3 == laboratorySchedule.getScheduleStatus()) {
            simpleLaboratoryScheduleVO.setScheduleStatus("已过期");
        }
        simpleLaboratoryScheduleVO.setStartTime(MyDateUtil.simpleDateFormat(laboratorySchedule.getStartTime(), MyDateUtil.YYYY_MM_DD_HH_MM_E));
        simpleLaboratoryScheduleVO.setUserName(userInfoService.selectUserInfoDTO(laboratorySchedule.getUserId()).getRealName());
        return simpleLaboratoryScheduleVO;
    }

    @Override
    public BaseVO addLaboratorySchedule(HttpSession httpSession, SaveLaboratoryScheduleDTO saveLaboratoryScheduleDTO) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (null == saveLaboratoryScheduleDTO.getEndTime() || StringUtils.isEmpty(saveLaboratoryScheduleDTO.getInstruction())
                || null == saveLaboratoryScheduleDTO.getLaboratoryId() || null == saveLaboratoryScheduleDTO.getStartTime()
                || null == saveLaboratoryScheduleDTO.getOffset()) {
            return ParamErrorVO.getInstance();
        }
        // 设置日期
        Calendar tempCalendar = Calendar.getInstance();
        // 设置日期偏移量
        tempCalendar.add(Calendar.DATE, saveLaboratoryScheduleDTO.getOffset());
        // 设置分钟
        tempCalendar.set(Calendar.MINUTE, 59);
        // 设置小时
        tempCalendar.set(Calendar.HOUR_OF_DAY, 8 + saveLaboratoryScheduleDTO.getStartTime());
        Date startTime = tempCalendar.getTime();
        tempCalendar.set(Calendar.HOUR_OF_DAY, 9 + saveLaboratoryScheduleDTO.getEndTime());
        Date endTime = tempCalendar.getTime();
        if (endTime.before(startTime)) {
            return new ErrorVO("结束时间早于开始时间");
        }
        if (!MyDateUtil.isEqual(startTime, endTime)) {
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
        for (LaboratorySchedule laboratorySchedule : laboratoryScheduleList
                ) {
            if ((laboratorySchedule.getStartTime().before(startTime)) && startTime.before(laboratorySchedule.getEndTime())
                    || (laboratorySchedule.getStartTime().before(endTime)) && endTime.before(laboratorySchedule.getEndTime())) {
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
        laboratorySchedule.setEndTime(endTime);
        laboratorySchedule.setStartTime(startTime);
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
    public BaseVO acceptById(HttpSession httpSession, Long id, Boolean isAccept) {
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
        laboratorySchedule.setScheduleStatus(isAccept ? 1 : 2);
        laboratorySchedule.setCheckUser(sessionDTO.getUserInfoDTO().getId());
        laboratorySchedule.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO getLaboratoryScheduleList(SearchLaboratoryScheduleDTO searchLaboratoryScheduleDTO) {
        if (null == searchLaboratoryScheduleDTO.getLaboratoryId() || null == searchLaboratoryScheduleDTO.getOffset()) {
            return ParamErrorVO.getInstance();
        }
        // 通过偏移量设置时间
        Calendar todayCalendar = Calendar.getInstance();
        todayCalendar.add(Calendar.DATE, searchLaboratoryScheduleDTO.getOffset());
        EntityWrapper<LaboratorySchedule> entityWrapper = new EntityWrapper<>();
        List<Integer> statusList = new ArrayList<>();
        // 未审批
        statusList.add(0);
        // 同意
        statusList.add(1);
        entityWrapper.in("schedule_status", statusList);
        entityWrapper.where("laboratory_id={0}", searchLaboratoryScheduleDTO.getLaboratoryId());
        entityWrapper.where("DATEDIFF(start_time, {0}) = 0", todayCalendar.getTime());
        List<LaboratorySchedule> laboratoryScheduleList = laboratoryScheduleMapper.selectList(entityWrapper);
        // 不可预定时间表
        List<LaboratoryScheduleFontVO> laboratoryScheduleFontVOList = new ArrayList<>();
        if (null != laboratoryScheduleList && 0 != laboratoryScheduleList.size()) {
            for (LaboratorySchedule laboratorySchedule : laboratoryScheduleList
                    ) {
                for (Integer i = MyDateUtil.getPeriod(laboratorySchedule.getStartTime()) - 8 ; i < (MyDateUtil.getPeriod(laboratorySchedule.getEndTime()) - 8); i++) {
                    LaboratoryScheduleFontVO laboratoryScheduleFontVO = new LaboratoryScheduleFontVO();
                    laboratoryScheduleFontVO.setId(laboratorySchedule.getId());
                    laboratoryScheduleFontVO.setStatus(laboratorySchedule.getScheduleStatus());
                    laboratoryScheduleFontVO.setPeriod(i);
                    laboratoryScheduleFontVOList.add(laboratoryScheduleFontVO);
                }
            }
            return new ListVO<>(laboratoryScheduleFontVOList);
        }
        return new ListVO<>(new ArrayList<>());
    }

    @Override
    public BaseVO getList(SimpleSearchLaboratoryDTO simpleSearchLaboratoryDTO) {
        if (!simpleSearchLaboratoryDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<LaboratorySchedule> entityWrapper = new EntityWrapper<>();
        if (null != simpleSearchLaboratoryDTO.getLaboratoryId()) {
            entityWrapper.where("laboratory_id={0}", simpleSearchLaboratoryDTO.getLaboratoryId());
        }
        if (!StringUtils.isEmpty(simpleSearchLaboratoryDTO.getUserName())) {
            List<Long> userIds = userInfoService.selectIdsByRealName(simpleSearchLaboratoryDTO.getUserName());
            entityWrapper.in("user_id", userIds);
        }
        int total = laboratoryScheduleMapper.selectCount(entityWrapper);
        Page page = new Page(simpleSearchLaboratoryDTO.getPage(), simpleSearchLaboratoryDTO.getRows());
        if (0 != total) {
            entityWrapper.orderBy("schedule_status");
            entityWrapper.orderBy("gmt_modified", false);
            List<LaboratorySchedule> laboratoryScheduleList = laboratoryScheduleMapper.selectPage(page, entityWrapper);
            if (null != laboratoryScheduleList && 0 != laboratoryScheduleList.size()) {
                List<SimpleLaboratoryScheduleVO> simpleLaboratoryScheduleVOList = laboratoryScheduleList.stream().map(this::transferSimpleLaboratoryScheduleVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleLaboratoryScheduleVOList);
            }
        }
        return new ListVO<>(0, page, new ArrayList<>());
    }

}
