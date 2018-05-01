package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.TaskInfo;
import org.cqtguniversity.lqms.mapper.TaskInfoMapper;
import org.cqtguniversity.lqms.service.TaskInfoService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 任务信息 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class TaskInfoServiceImpl extends ServiceImpl<TaskInfoMapper, TaskInfo> implements TaskInfoService {
	
}
