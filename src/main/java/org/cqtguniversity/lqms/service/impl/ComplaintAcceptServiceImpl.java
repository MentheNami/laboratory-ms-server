package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.ComplaintAccept;
import org.cqtguniversity.lqms.mapper.ComplaintAcceptMapper;
import org.cqtguniversity.lqms.pojo.dto.complaint.ComplaintDTO;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SaveComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.dto.complaintaccept.SearchComplaintAcceptDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.complaintaccept.SimpleComplaintAcceptVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.SessionUserVO;
import org.cqtguniversity.lqms.service.*;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 投诉受理表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class ComplaintAcceptServiceImpl extends ServiceImpl<ComplaintAcceptMapper, ComplaintAccept> implements ComplaintAcceptService {

    @Autowired
    private ComplaintAcceptMapper complaintAcceptMapper;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private ComplaintService complaintService;


    @Autowired
    private CommonContentService commonContentService;

    @Autowired
    private AsyncTaskService asyncTaskService;


    private SimpleComplaintAcceptVO transferSimpleComplaintAcceptVO(ComplaintAccept complaintAccept) {
        SimpleComplaintAcceptVO simpleComplaintAcceptVO = new SimpleComplaintAcceptVO();
        simpleComplaintAcceptVO.setId(complaintAccept.getId());
        simpleComplaintAcceptVO.setAcceptorBy(userInfoService.selectUserInfoDTO(complaintAccept.getAcceptorBy()).getRealName());
        simpleComplaintAcceptVO.setComplainId(complaintService.selectComplaintDTO(complaintAccept.getComplainId()).getComplaintNo());
        simpleComplaintAcceptVO.setGmtModified(MyDateUtil.simpleDateFormat(complaintAccept.getGmtModified(), MyDateUtil.YYYY_MM_DD_C));
        simpleComplaintAcceptVO.setProcessingAdvice(ConfigOptionConstruct.transferStatus(complaintAccept.getProcessingAdvice()));
        simpleComplaintAcceptVO.setProcessingContent(commonContentService.selectCommonContentDTO(complaintAccept.getProcessingContent()).getContent());
        return simpleComplaintAcceptVO;
    }

    @Override
    public BaseVO getComplaintAcceptList(SearchComplaintAcceptDTO searchComplaintAcceptDTO) {
        if (!searchComplaintAcceptDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<ComplaintAccept> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("is_deleted={0}", 0);
        if (!StringUtils.isEmpty(searchComplaintAcceptDTO.getAcceptorBy())) {
            List<Long> userIds = userInfoService.selectIdsByRealName(searchComplaintAcceptDTO.getAcceptorBy());
            if (null != userIds && 0 != userIds.size()) {
                entityWrapper.in("acceptor_by", userIds);
            }
        }
        if (null != searchComplaintAcceptDTO.getProcessingAdvice()) {
            entityWrapper.where("processing_advice={0}", searchComplaintAcceptDTO.getProcessingAdvice());
        }
        int total = complaintAcceptMapper.selectCount(entityWrapper);
        Page page = new Page(searchComplaintAcceptDTO.getPage(), searchComplaintAcceptDTO.getRows());
        if (0 != total) {
            // 通过修改时间排序
            entityWrapper.orderBy("gmt_modified");
            List<ComplaintAccept> complaintAcceptList = complaintAcceptMapper.selectPage(page, entityWrapper);
            if (null != complaintAcceptList && 0 != complaintAcceptList.size()) {
                List<SimpleComplaintAcceptVO> simpleComplaintAcceptVOList = complaintAcceptList.stream().map(this::transferSimpleComplaintAcceptVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleComplaintAcceptVOList);
            }
        }
        return new ListVO<>(0, page, new ArrayList<>());
    }

    @Override
    public BaseVO handlingComplaint(HttpSession httpSession, SaveComplaintAcceptDTO saveComplaintAcceptDTO) {
        SessionUserVO sessionUserVO = (SessionUserVO) httpSession.getAttribute("sessionUserVO");
        if (null == sessionUserVO) {
            return new ErrorVO("用户未登陆");
        }
        ComplaintDTO complaintDTO = complaintService.selectComplaintDTO(saveComplaintAcceptDTO.getComplainId());
        if (null == complaintDTO) {
            return ErrorVO.getInternalError();
        }
        ComplaintAccept complaintAccept = new ComplaintAccept();
        // 设置投诉处理人
        complaintAccept.setAcceptorBy(sessionUserVO.getUserInfoId());
        // 设置处理投诉编号
        complaintAccept.setComplainId(saveComplaintAcceptDTO.getComplainId());
        // 设置处理意见
        complaintAccept.setProcessingAdvice(saveComplaintAcceptDTO.getProcessingAdvice());
        // 设置处理内容
        complaintAccept.setProcessingContent(commonContentService.getByContent(saveComplaintAcceptDTO.getProcessingContent()).getId());
        // 设置逻辑删除
        complaintAccept.setIsDeleted(0);
        Calendar calendar = Calendar.getInstance();
        // 设计创建时间
        complaintAccept.setGmtCreate(calendar.getTime());
        // 设置修改时间
        complaintAccept.setGmtModified(calendar.getTime());
        // 创建投诉处理记录
        complaintAccept.insert();
        // 更改投诉建议状态
        if (!complaintService.acceptComplaintDTO(saveComplaintAcceptDTO.getComplainId())) {
            return ErrorVO.getInternalError();
        }
        // 发送邮件
        asyncTaskService.acceptComplaintEmail(complaintDTO.getContactEmail(), "投诉编号：" + complaintDTO.getComplaintNo() + "【" + ConfigOptionConstruct.transferStatus(complaintAccept.getProcessingAdvice()) + "】", saveComplaintAcceptDTO.getProcessingContent() + "【受理人：" + sessionUserVO.getRealName() + "】");
        return SuccessVO.getInstance();
    }
}
