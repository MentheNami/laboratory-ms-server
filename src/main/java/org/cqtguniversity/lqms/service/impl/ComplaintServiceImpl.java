package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.Complaint;
import org.cqtguniversity.lqms.entity.Laboratory;
import org.cqtguniversity.lqms.mapper.ComplaintMapper;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.complaint.ComplaintVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.ComplaintService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.swing.text.html.parser.Entity;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * <p>
 * 投诉表 服务实现类
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-02
 */
@Service
public class ComplaintServiceImpl extends ServiceImpl<ComplaintMapper, Complaint> implements ComplaintService {
    private final ComplaintMapper complaintMapper;

    public ComplaintServiceImpl(ComplaintMapper complaintMapper) {
        this.complaintMapper = complaintMapper;
    }

    @Override
    public BaseVO addComplaint(SaveComplaintDTO saveComplaintDTO) {
      //合理性判断
        if (null !=saveComplaintDTO.getId() || StringUtils.isEmpty(saveComplaintDTO.getComplainantName())
                || StringUtils.isEmpty(saveComplaintDTO.getAddress()) || StringUtils.isEmpty(saveComplaintDTO.getComplaintNo())
                || StringUtils.isEmpty(saveComplaintDTO.getComplaintTitle()) || StringUtils.isEmpty(saveComplaintDTO.getContactEmail())
                || StringUtils.isEmpty(saveComplaintDTO.getContactName()) || null ==saveComplaintDTO.getComplainantStatus()
                || null == saveComplaintDTO.getComplaintDetail() || null == saveComplaintDTO.getContactPhone()) {
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        Complaint complaint = new Complaint();
        //复制投诉基本信息
        BeanUtils.copyProperties(saveComplaintDTO,complaint,"id");
        //设置创建时间
        complaint.setGmtCreate(Calendar.getInstance().getTime());
        //设置修改时间
        complaint.setGmtModified(Calendar.getInstance().getTime());
        //逻辑删除
        complaint.setIsDeleted(0);
        //插入数据
        complaintMapper.insert(complaint);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeById(Long id) {
        //合理性判断
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        // 因为是逻辑删除，所以需要查询是否存在
       Complaint complaint = complaintMapper.selectById(id);
        if(complaint == null || 1 == complaint.getIsDeleted()){
            return new ErrorVO("投诉不存在");
        }
        //设置删除时间
        complaint.setGmtCreate(Calendar.getInstance().getTime());
        //删除标记为1
        complaint.setIsDeleted(1);
        //通过Id删除投诉
        complaintMapper.updateById(complaint);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateComplaint(SaveComplaintDTO saveComplaintDTO) {
        //合理性判断
        if(null ==saveComplaintDTO.getId() || StringUtils.isEmpty(saveComplaintDTO.getComplainantName())
                || StringUtils.isEmpty(saveComplaintDTO.getAddress()) || StringUtils.isEmpty(saveComplaintDTO.getComplaintNo())
                || StringUtils.isEmpty(saveComplaintDTO.getComplaintTitle()) || StringUtils.isEmpty(saveComplaintDTO.getContactEmail())
                || StringUtils.isEmpty(saveComplaintDTO.getContactName()) || null ==saveComplaintDTO.getComplainantStatus()
                || null == saveComplaintDTO.getComplaintDetail() || null == saveComplaintDTO.getContactPhone()){
            // 返回一个参数错误VO的实例
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        Complaint complaint = new Complaint();
        //复制投诉基本信息
        BeanUtils.copyProperties(saveComplaintDTO, complaint);
        //创建当前修改时间
        complaint.setGmtModified(Calendar.getInstance().getTime());
        complaintMapper.updateById(complaint);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        //合理性判断
        if(null == id) {
            //返回前端逻辑错误
            return ParamErrorVO.getInstance();
        }
        Complaint complaint = complaintMapper.selectById(id);
        if(complaint == null || 1 == complaint.getIsDeleted()){
            return new ErrorVO("投诉不存在");
        }
        ComplaintVO complaintVO = new ComplaintVO();
        BeanUtils.copyProperties(complaint, complaintVO,"gmtCreate", "gmt_modified", "isDeleted");
        return new DetailResultVO(complaintVO);
    }

    @Override
    public BaseVO getComplaintList(SearchComplaintDTO searchComplaintDTO) {
        //合理性判断
        if (!searchComplaintDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Complaint> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("is_deleted=0",0);
        //增加模糊查询
        if(!StringUtils.isEmpty(searchComplaintDTO.getComplainantName())) {
            entityWrapper.like("complainant_name", searchComplaintDTO.getComplainantName());
        }
        if (!StringUtils.isEmpty(searchComplaintDTO.getComplaintNo())){
            entityWrapper.like("complaint_no", searchComplaintDTO.getComplaintNo());
        }
        if (!StringUtils.isEmpty(searchComplaintDTO.getContactName())){
            entityWrapper.like("contact_name", searchComplaintDTO.getComplainantName());
        }
        if (null !=searchComplaintDTO.getComplainantStatus() ){
            entityWrapper.like("complainant_status", searchComplaintDTO.getComplainantStatus().toString());
        }
        int total = complaintMapper.selectCount(entityWrapper);
        if(0 != total) {
            Page page = new Page(searchComplaintDTO.getPage(),searchComplaintDTO.getRows());
            List<Complaint> complaintsList = complaintMapper.selectPage(page, entityWrapper);
            if (null != complaintsList && 0 !=complaintsList.size()){
                return new ListVO<>(complaintsList);
            }
        }
        return new ListVO<>(new ArrayList<>());
    }

}
