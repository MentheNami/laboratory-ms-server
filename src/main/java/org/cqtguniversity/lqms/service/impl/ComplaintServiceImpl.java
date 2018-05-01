package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Complaint;
import org.cqtguniversity.lqms.mapper.ComplaintMapper;
import org.cqtguniversity.lqms.service.ComplaintService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 投诉表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-01
 */
@Service
public class ComplaintServiceImpl extends ServiceImpl<ComplaintMapper, Complaint> implements ComplaintService {
	
}
