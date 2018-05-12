package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.ComplaintAccept;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SaveComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SearchComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 投诉受理表 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface ComplaintAcceptService extends IService<ComplaintAccept> {

    // 查询投诉受理列表
    BaseVO getComplaintAcceptList(SearchComplaintAcceptDTO searchComplaintAcceptDTO);

    BaseVO handlingComplaint(HttpSession httpSession, SaveComplaintAcceptDTO saveComplaintAcceptDTO);
	
}
