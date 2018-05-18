package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.WorkRecord;
import org.cqtguniversity.lqms.mapper.WorkRecordMapper;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.dto.workrecord.SaveWorkRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.vo.workrecord.SimpleWorkRecordVO;
import org.cqtguniversity.lqms.service.WorkRecordService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 工作记录 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class WorkRecordServiceImpl extends ServiceImpl<WorkRecordMapper, WorkRecord> implements WorkRecordService {

    private final WorkRecordMapper workRecordMapper;

    public WorkRecordServiceImpl(WorkRecordMapper workRecordMapper) {
        this.workRecordMapper = workRecordMapper;
    }

    private SimpleWorkRecordVO transferSimpleWorkRecordVO(WorkRecord workRecord) {
        SimpleWorkRecordVO simpleWorkRecordVO = new SimpleWorkRecordVO();
        simpleWorkRecordVO.setId(workRecord.getId());
        simpleWorkRecordVO.setBeginDate(MyDateUtil.simpleDateFormat(workRecord.getBeginDate(), MyDateUtil.YYYY_MM_DD_C));
        simpleWorkRecordVO.setCompanyName(workRecord.getCompanyName());
        simpleWorkRecordVO.setEndDate(MyDateUtil.simpleDateFormat(workRecord.getEndDate(), MyDateUtil.YYYY_MM_DD_C));
        simpleWorkRecordVO.setUserId(workRecord.getUserId());
        simpleWorkRecordVO.setWorkPosition(workRecord.getWorkPosition());
        return simpleWorkRecordVO;
    }

    @Override
    public BaseVO addWorkRecord(HttpSession httpSession, SaveWorkRecordDTO saveWorkRecordDTO) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (null == saveWorkRecordDTO.getBeginDate() || null == saveWorkRecordDTO.getCompanyName()
                || null == saveWorkRecordDTO.getEndDate() || null ==saveWorkRecordDTO.getWorkPosition()) {
            return ParamErrorVO.getInstance();
        }
        WorkRecord workRecord = new WorkRecord();
        workRecord.setBeginDate(saveWorkRecordDTO.getBeginDate());
        workRecord.setCompanyName(saveWorkRecordDTO.getCompanyName());
        workRecord.setEndDate(saveWorkRecordDTO.getEndDate());
        workRecord.setUserId(sessionDTO.getUserInfoDTO().getId());
        workRecord.setWorkPosition(saveWorkRecordDTO.getWorkPosition());
        Calendar calendar = Calendar.getInstance();
        workRecord.setGmtCreate(calendar.getTime());
        workRecord.setGmtModified(calendar.getTime());
        workRecord.insert();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        int count = workRecordMapper.deleteById(id);
        if (0 == count) {
            return new ErrorVO("工作记录已删除");
        }
        return SuccessVO.getInstance();
    }

    @Override
    public List<SimpleWorkRecordVO> getSimpleWorkRecordVOList(Long userId) {
        EntityWrapper<WorkRecord> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("user_id={0}", userId);
        List<WorkRecord> workRecordList = workRecordMapper.selectList(entityWrapper);
        if (null == workRecordList || 0 == workRecordList.size()) {
            return null;
        }
        return workRecordList.stream().map(this::transferSimpleWorkRecordVO).collect(Collectors.toList());
    }
}
