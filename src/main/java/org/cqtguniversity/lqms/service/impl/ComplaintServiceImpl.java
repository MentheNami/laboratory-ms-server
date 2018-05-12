package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.sun.org.apache.regexp.internal.RE;
import org.cqtguniversity.lqms.construct.NumTypeConstruct;
import org.cqtguniversity.lqms.entity.CommonContent;
import org.cqtguniversity.lqms.entity.Complaint;
import org.cqtguniversity.lqms.mapper.ComplaintMapper;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.CommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.ComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.complaint.ComplaintVO;
import org.cqtguniversity.lqms.pojo.vo.complaint.SimpleComplaintVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.AsyncTaskService;
import org.cqtguniversity.lqms.service.CommonContentService;
import org.cqtguniversity.lqms.service.ComplaintService;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.cqtguniversity.lqms.util.email.WangYiEmail;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 投诉表 服务实现类
 * </p>
 * @author Wang26211
 * @since 2018-05-02
 */
@Service
public class ComplaintServiceImpl extends ServiceImpl<ComplaintMapper, Complaint> implements ComplaintService {

    // 引用投诉服务
    private final ComplaintMapper complaintMapper;
    // 引用编号规则服务
    private final NumberRuleService numberRuleService;
    // 引用长文本服务
    @Autowired
    private CommonContentService commonContentService;

    @Autowired
    private AsyncTaskService asyncTaskService;

    // 构造方法注入相关服务
    @Autowired
    public ComplaintServiceImpl(ComplaintMapper complaintMapper, NumberRuleService numberRuleService) {
        this.complaintMapper = complaintMapper;
        this.numberRuleService = numberRuleService;
    }

    /**
     * Wang26211
     * 翻译投诉实体为VO
     * @param complaint 投诉实体
     * @return 相应VO
     */
    private SimpleComplaintVO transferSimpleComplaintVO(Complaint complaint) {
        // 创建实验室VO
        SimpleComplaintVO simpleComplaintVO = new SimpleComplaintVO();
        // 复制基本信息
        BeanUtils.copyProperties(complaint, simpleComplaintVO, "complainantStatus");
        simpleComplaintVO.setComplainantStatus(complaint.getComplainantStatus() == 0? "未受理" : "已受理");
        return simpleComplaintVO;
    }

    @Override
    public ComplaintDTO selectComplaintDTO(Long id) {
        Complaint complaint = complaintMapper.selectById(id);
        if (null == complaint || 1 == complaint.getIsDeleted()) {
            System.out.println("存在错误的投诉编号，请检查投诉表");
            return null;
        }
        ComplaintDTO complaintDTO = new ComplaintDTO();
        BeanUtils.copyProperties(complaint, complaintDTO);
        return complaintDTO;
    }

    @Override
    public boolean acceptComplaintDTO(Long id) {
        Complaint complaint = complaintMapper.selectById(id);
        if (null == complaint) {
            System.out.println("存在错误的投诉建议，请检查投诉表");
            return false;
        }
        complaint.setComplainantStatus(1);
        complaint.updateById();
        return true;
    }

    @Override
    public BaseVO addComplaint(SaveComplaintDTO saveComplaintDTO) {
        //合理性判断
        if (null != saveComplaintDTO.getId() || StringUtils.isEmpty(saveComplaintDTO.getComplainantName())
                || StringUtils.isEmpty(saveComplaintDTO.getAddress()) || StringUtils.isEmpty(saveComplaintDTO.getComplaintTitle())
                || StringUtils.isEmpty(saveComplaintDTO.getContactEmail()) || StringUtils.isEmpty(saveComplaintDTO.getContactName())
                || StringUtils.isEmpty(saveComplaintDTO.getComplaintDetail())
                || StringUtils.isEmpty(saveComplaintDTO.getContactPhone())) {
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        Complaint complaint = new Complaint();
        //复制投诉基本信息，忽略id
        BeanUtils.copyProperties(saveComplaintDTO, complaint, "id", "complaintDetail");
        // 获取一个长文本DTU
        CommonContentDTO commonContentDTO = commonContentService.getByContent(saveComplaintDTO.getComplaintDetail());
        if (null == commonContentDTO) {
            return ErrorVO.getInternalError();
        }
        // 设置长文本id，   把长文本id (相当于一个号码牌)存放在投诉对象中
        complaint.setComplaintDetail(commonContentDTO.getId());
        // 设置一个自动生成的投诉编号
        complaint.setComplaintNo(numberRuleService.getNum(NumTypeConstruct.COMPLAINTNO));
        // 设置创建时间
        complaint.setGmtCreate(Calendar.getInstance().getTime());
        // 设置修改时间
        complaint.setGmtModified(Calendar.getInstance().getTime());
        // 设置状态: 未处理
        complaint.setComplainantStatus(0);
        //逻辑删除
        complaint.setIsDeleted(0);
        //插入数据
        complaintMapper.insert(complaint);
        // 发送邮件给处理人员
        asyncTaskService.complaintEmail(saveComplaintDTO.getComplaintTitle(), saveComplaintDTO.getComplaintDetail());
        // 发送邮件给投诉人
        asyncTaskService.complaintSendEmail(saveComplaintDTO.getContactEmail(), saveComplaintDTO.getComplainantName());
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
        // 判断是否存在
        if (complaint == null || 1 == complaint.getIsDeleted()) {
            return new ErrorVO("投诉不存在");
        }
        //设置删除时间
        complaint.setGmtModified(Calendar.getInstance().getTime());
        //删除标记为1
        complaint.setIsDeleted(1);
        //通过Id删除投诉
        complaintMapper.updateById(complaint);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateComplaint(SaveComplaintDTO saveComplaintDTO) {
        //合理性判断
        if (null == saveComplaintDTO.getId() || StringUtils.isEmpty(saveComplaintDTO.getComplainantName())
                || StringUtils.isEmpty(saveComplaintDTO.getAddress()) || StringUtils.isEmpty(saveComplaintDTO.getComplaintTitle())
                || StringUtils.isEmpty(saveComplaintDTO.getContactEmail()) || StringUtils.isEmpty(saveComplaintDTO.getContactName())
                || null == saveComplaintDTO.getComplaintDetail() || null == saveComplaintDTO.getContactPhone()) {
            // 返回一个参数错误VO的实例
            return ParamErrorVO.getInstance();
        }
        //查询该投诉是否存在
        Complaint complaint = complaintMapper.selectById(saveComplaintDTO.getId());
        if (null == complaint || 1 == complaint.getIsDeleted()) {
            return new ErrorVO("该投诉不存在");
        }
        //合理性通过，复制投诉基本信息
        BeanUtils.copyProperties(saveComplaintDTO, complaint);
        //创建当前修改时间
        complaint.setGmtModified(Calendar.getInstance().getTime());
        //插入数据
        complaintMapper.updateById(complaint);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        //合理性判断
        if (null == id) {
            //返回前端逻辑错误
            return ParamErrorVO.getInstance();
        }
        //判断投诉是否存在
        Complaint complaint = complaintMapper.selectById(id);
        // 判断是否存在
        if (complaint == null || 1 == complaint.getIsDeleted()) {
            return new ErrorVO("投诉不存在");
        }
        ComplaintVO complaintVO = new ComplaintVO();
        //复制基本信息除了创建时间、修改时间、isDeleted
        BeanUtils.copyProperties(complaint, complaintVO, "gmtCreate", "complaintDetail", "complainantStatus");
        // 格式化时间
        complaintVO.setGmtCreate(MyDateUtil.simpleDateFormat(complaint.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        CommonContentDTO commonContentDTO = commonContentService.selectCommonContentDTO(complaint.getComplaintDetail());
        if (null == commonContentDTO) {
            return ErrorVO.getInternalError();
        }
        complaintVO.setComplaintDetail(commonContentDTO.getContent());
        complaintVO.setComplainantStatus(complaint.getComplainantStatus() == 0? "未受理" : "已受理");
        return new DetailResultVO(complaintVO);
    }

    @Override
    public BaseVO getComplaintList(SearchComplaintDTO searchComplaintDTO) {
        //合理性判断
        if (!searchComplaintDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Complaint> entityWrapper = new EntityWrapper<>();
        // 查询所有已存在
        entityWrapper.where("is_deleted=0", 0);
        //增加模糊查询
        if (!StringUtils.isEmpty(searchComplaintDTO.getComplaintNo())) {
            entityWrapper.like("complaint_no", searchComplaintDTO.getComplaintNo());
        }
        if (!StringUtils.isEmpty(searchComplaintDTO.getContactName())) {
            entityWrapper.like("contact_name", searchComplaintDTO.getContactName());
        }
        if (null != searchComplaintDTO.getComplainantStatus()) {
            entityWrapper.where("complainant_status={0}", searchComplaintDTO.getComplainantStatus().toString());
        }
        //  设置投诉详情条件
        if (!StringUtils.isEmpty(searchComplaintDTO.getComplaintDetail())) {
            // 应该去长文本表中查找所有符合条件的  长文本id
            List<Long> contentIds = commonContentService.selectIdsByContent(searchComplaintDTO.getComplaintDetail());
            // 再去找投诉表中这些有长文本id   的投诉记录
            entityWrapper.in("complaint_detail", contentIds);
        }
        // 查询总条数
        int total = complaintMapper.selectCount(entityWrapper);
        // 设置分页
        Page page = new Page(searchComplaintDTO.getPage(), searchComplaintDTO.getRows());
        if (0 != total) {
            List<Complaint> complaintsList = complaintMapper.selectPage(page, entityWrapper);
            if (null != complaintsList && 0 != complaintsList.size()) {
                // 通过Java8 Stream流操作语法糖  将投诉实体集合翻译为VO集合
                List<SimpleComplaintVO> simpleComplaintVOList = complaintsList.stream().map(this::transferSimpleComplaintVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleComplaintVOList);
            }
        }
        return new ListVO<>(0, page, new ArrayList<>());
    }

}
