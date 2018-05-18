package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.construct.NumTypeConstruct;
import org.cqtguniversity.lqms.entity.DeviceProgram;
import org.cqtguniversity.lqms.mapper.DeviceProgramMapper;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.CommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SaveDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.deviceprogram.SearchDeviceProgramDTO;
import org.cqtguniversity.lqms.pojo.dto.divece.DeviceDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.deviceprogram.DeviceProgramVO;
import org.cqtguniversity.lqms.pojo.vo.deviceprogram.SimpleDeviceProgramVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.*;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.Objects;

/**
 * 设备方案申请 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class DeviceProgramServiceImpl extends ServiceImpl<DeviceProgramMapper, DeviceProgram> implements DeviceProgramService {

    @Autowired
    private DeviceProgramMapper deviceProgramMapper;

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private CommonContentService commonContentService;

    @Autowired
    private NumberRuleService numberRuleService;

    @Autowired
    private UserInfoService userInfoService;

    private DeviceProgram getDeviceProgram(Long id) {
        Assert.notNull(id, "id must is not null");
        return deviceProgramMapper.selectById(id);
    }

    private SimpleDeviceProgramVO transferSimpleDeviceProgramVO(DeviceProgram deviceProgram) {
        SimpleDeviceProgramVO simpleDeviceProgramVO = new SimpleDeviceProgramVO();
        simpleDeviceProgramVO.setId(deviceProgram.getId());
        simpleDeviceProgramVO.setApplyNo(deviceProgram.getApplyNo());
        simpleDeviceProgramVO.setApplyUser(userInfoService.selectUserInfoDTO(deviceProgram.getApplyUser()).getRealName());
        DeviceDTO deviceDTO = deviceService.selectDeviceDTO(deviceProgram.getDeviceId());
        simpleDeviceProgramVO.setDeviceName(deviceDTO == null? "" : deviceDTO.getDeviceName());
        simpleDeviceProgramVO.setExecutionDate(MyDateUtil.simpleDateFormat(deviceProgram.getExecutionDate(), MyDateUtil.YYYY_MM_DD_C));
        simpleDeviceProgramVO.setGmtCreate(MyDateUtil.simpleDateFormat(deviceProgram.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        simpleDeviceProgramVO.setIsApproval(null == deviceProgram.getApprovalUser()? "未审批" : "已审批");
        simpleDeviceProgramVO.setProgramType(ConfigOptionConstruct.getOptionById(deviceProgram.getProgramType()).getKey());
        return simpleDeviceProgramVO;
    }

    @Override
    public BaseVO addDeviceProgram(HttpSession httpSession, SaveDeviceProgramDTO saveDeviceProgramDTO) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (null != saveDeviceProgramDTO.getId()
                || StringUtils.isEmpty(saveDeviceProgramDTO.getDescription()) || null == saveDeviceProgramDTO.getDeviceId()
                || null == saveDeviceProgramDTO.getExecutionDate() || null == saveDeviceProgramDTO.getProgramType()) {
            return ParamErrorVO.getInstance();
        }
        // 判断设备是否存在
        DeviceDTO deviceDTO = deviceService.selectDeviceDTO(saveDeviceProgramDTO.getDeviceId());
        if (null == deviceDTO) {
            return new ErrorVO("设备不存在");
        }
        if (Objects.equals(deviceDTO.getDeviceStatus(), saveDeviceProgramDTO.getProgramType())) {
            return new ErrorVO("方案类型不能与设备状态相同");
        }
        DeviceProgram deviceProgram = new DeviceProgram();
        Calendar calendar = Calendar.getInstance();
        // 获取一个申请编号
        deviceProgram.setApplyNo(numberRuleService.getNum(NumTypeConstruct.APPLYNO));
        // 设置执行时间
        deviceProgram.setExecutionDate(saveDeviceProgramDTO.getExecutionDate());
        // 设置设备id
        deviceProgram.setDeviceId(saveDeviceProgramDTO.getDeviceId());
        // 设置方案状态
        deviceProgram.setProgramType(saveDeviceProgramDTO.getProgramType());
        deviceProgram.setGmtCreate(calendar.getTime());
        deviceProgram.setGmtModified(calendar.getTime());
        CommonContentDTO commonContentDTO = commonContentService.getByContent(saveDeviceProgramDTO.getDescription());
        // 将描述创建长文本
        deviceProgram.setDescription(commonContentDTO.getId());
        // 创建申请编号
        deviceProgram.setApplyNo(numberRuleService.getNum(NumTypeConstruct.APPLYNO));
        deviceProgram.setApplyUser(sessionDTO.getUserInfoDTO().getId());
        deviceProgram.setIsDeleted(0);
        deviceProgram.insert();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        DeviceProgram deviceProgram = getDeviceProgram(id);
        if (null == deviceProgram || 1 == deviceProgram.getIsDeleted()) {
            return new ErrorVO("设备方案不存在");
        }
        deviceProgram.setIsDeleted(1);
        deviceProgram.setGmtModified(Calendar.getInstance().getTime());
        deviceProgram.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateDeviceProgram(SaveDeviceProgramDTO saveDeviceProgramDTO) {
        if (null == saveDeviceProgramDTO.getId() || null == saveDeviceProgramDTO.getProgramType()
                || null == saveDeviceProgramDTO.getExecutionDate() || null == saveDeviceProgramDTO.getDeviceId()
                || StringUtils.isEmpty(saveDeviceProgramDTO.getProgramType())) {
            return ParamErrorVO.getInstance();
        }
        DeviceProgram deviceProgram = getDeviceProgram(saveDeviceProgramDTO.getId());
        if (null == deviceProgram || 1 == deviceProgram.getIsDeleted()) {
            return new ErrorVO("设备方案不存在");
        }
        if (null != deviceProgram.getApprovalUser()) {
            return new ErrorVO("方案已审批，不可更改");
        }
        deviceProgram.setGmtModified(Calendar.getInstance().getTime());
        deviceProgram.setDeviceId(saveDeviceProgramDTO.getDeviceId());
        deviceProgram.setProgramType(saveDeviceProgramDTO.getProgramType());
        deviceProgram.setExecutionDate(saveDeviceProgramDTO.getExecutionDate());
        commonContentService.updateCommonContent(deviceProgram.getDescription(), saveDeviceProgramDTO.getDescription());
        deviceProgram.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        DeviceProgram deviceProgram = getDeviceProgram(id);
        if (null == deviceProgram || 1 == deviceProgram.getIsDeleted()) {
            return new ErrorVO("设备方案不存在");
        }
        DeviceProgramVO deviceProgramVO = new DeviceProgramVO();
        BeanUtils.copyProperties(deviceProgram, deviceProgramVO, "description", "approvalDescription");
        deviceProgramVO.setDescription(commonContentService.selectCommonContentDTO(deviceProgram.getDescription()).getContent());
        if (null != deviceProgram.getApprovalDescription()) {
            deviceProgramVO.setApprovalDescription(commonContentService.selectCommonContentDTO(deviceProgram.getApprovalDescription()).getContent());
        }
        return new DetailResultVO(deviceProgramVO);
    }

    @Override
    public BaseVO getDeviceProgramList(SearchDeviceProgramDTO searchDeviceProgramDTO) {
        if (!searchDeviceProgramDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper entityWrapper = new EntityWrapper();
        entityWrapper.where("is_deleted={0}", 0);
        if (null != searchDeviceProgramDTO.getProgramType()) {
            entityWrapper.where("program_type={0}",searchDeviceProgramDTO.getProgramType().toString());
        }
        if (!StringUtils.isEmpty(searchDeviceProgramDTO.getApplyUser())) {

        }
        //if ()
        return null;
    }
}
