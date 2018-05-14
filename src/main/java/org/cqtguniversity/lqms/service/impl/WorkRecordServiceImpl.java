package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.WorkRecord;
import org.cqtguniversity.lqms.mapper.WorkRecordMapper;
import org.cqtguniversity.lqms.pojo.dto.workrecord.SaveWorkRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.SessionUserVO;
import org.cqtguniversity.lqms.service.WorkRecordService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Calendar;

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

    @Override
    public BaseVO addWorkRecord(HttpSession httpSession, SaveWorkRecordDTO saveWorkRecordDTO) {
        SessionUserVO sessionUserVO = (SessionUserVO) httpSession.getAttribute("sessionUserVO");
        if (null == sessionUserVO) {
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
        workRecord.setUserId(sessionUserVO.getUserInfoId());
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
}
