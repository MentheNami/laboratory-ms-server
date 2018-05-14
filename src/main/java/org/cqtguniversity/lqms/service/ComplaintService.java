package org.cqtguniversity.lqms.service;

import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.entity.Complaint;
import org.cqtguniversity.lqms.pojo.dto.complaint.ComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import javax.servlet.http.HttpSession;

/**
 * 投诉表 服务类
 * @author Wang26211
 * @since 2018-05-02
 */
public interface ComplaintService extends IService<Complaint> {

    ComplaintDTO selectComplaintDTO(Long id);

    boolean acceptComplaintDTO(Long id);

    //增加投诉
    BaseVO addComplaint(HttpSession httpSession, SaveComplaintDTO saveComplaintDTO);
    //删除投诉通过ID
    BaseVO removeById(Long id);
    //更新投诉
    BaseVO updateComplaint(SaveComplaintDTO saveComplaintDTO);
    //查询投诉详情
    BaseVO selectById(Long id);

    //查询投诉列表
    BaseVO getComplaintList(SearchComplaintDTO searchComplaintDTO);

    // 查看我的投诉
    BaseVO getMyComplaintList(HttpSession httpSession);
}
