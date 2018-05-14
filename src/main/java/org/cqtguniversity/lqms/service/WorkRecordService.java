package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.WorkRecord;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.workrecord.SaveWorkRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.workrecord.SimpleWorkRecordVO;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * <p>
 * 工作记录 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface WorkRecordService extends IService<WorkRecord> {

    //增加工作记录
    BaseVO addWorkRecord(HttpSession httpSession, SaveWorkRecordDTO saveWorkRecordDTO);

    BaseVO removeById(Long id);

    // 获取实验室人员工作记录
    List<SimpleWorkRecordVO> getSimpleWorkRecordVOList(Long userId);
}
