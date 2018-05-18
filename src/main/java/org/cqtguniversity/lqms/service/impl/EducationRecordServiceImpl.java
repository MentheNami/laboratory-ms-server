package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.EducationRecord;
import org.cqtguniversity.lqms.mapper.EducationRecordMapper;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.dto.university.UniversityDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.educationrecord.ComplexEducationRecordVO;
import org.cqtguniversity.lqms.pojo.vo.educationrecord.EducationRecordVO;
import org.cqtguniversity.lqms.pojo.vo.educationrecord.SimpleEducationRecordVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.SimpleUserInfoVO;
import org.cqtguniversity.lqms.pojo.vo.workrecord.SimpleWorkRecordVO;
import org.cqtguniversity.lqms.service.*;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.List;

/**
 * 人员学历及学位记录 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class EducationRecordServiceImpl extends ServiceImpl<EducationRecordMapper, EducationRecord> implements EducationRecordService {

    private final EducationRecordMapper educationRecordMapper;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private WorkRecordService workRecordService;

    @Autowired
    private UniversityService universityService;

    @Autowired
    private EducationRecordService educationRecordService;

    @Autowired
    private UserNodeService userNodeService;

    public EducationRecordServiceImpl(EducationRecordMapper educationRecordMapper) {
        this.educationRecordMapper = educationRecordMapper;
    }

    @Override
    public BaseVO addEducationRecord(SaveEducationRecordDTO saveEducationRecordDTO) {
        // 合法性校验
        if (null != saveEducationRecordDTO.getId() || null == saveEducationRecordDTO.getAcademicDegree()
                || StringUtils.isEmpty(saveEducationRecordDTO.getAcademicDegreeCertificateNo())
                || null == saveEducationRecordDTO.getAcademicQualifications() || StringUtils.isEmpty(saveEducationRecordDTO.getGraduationCertificateNo())
                || null == saveEducationRecordDTO.getGraduationDate() || null == saveEducationRecordDTO.getSchool()
                || null == saveEducationRecordDTO.getUserId()) {
            return ParamErrorVO.getInstance();
        }
        EducationRecord educationRecord = new EducationRecord();
        // 设置学位
        educationRecord.setAcademicDegree(saveEducationRecordDTO.getAcademicDegree());
        // 设置毕业证书编号
        educationRecord.setGraduationCertificateNo(saveEducationRecordDTO.getGraduationCertificateNo());
        // 设置学位证书编号
        educationRecord.setAcademicDegreeCertificateNo(saveEducationRecordDTO.getAcademicDegreeCertificateNo());
        educationRecord.setAcademicQualifications(saveEducationRecordDTO.getAcademicQualifications());
        Calendar calendar = Calendar.getInstance();
        educationRecord.setGmtCreate(calendar.getTime());
        educationRecord.setGmtModified(calendar.getTime());
        // 毕业日期
        educationRecord.setGraduationDate(saveEducationRecordDTO.getGraduationDate());
        educationRecord.setSchool(saveEducationRecordDTO.getSchool());
        educationRecord.setUserId(saveEducationRecordDTO.getUserId());
        educationRecord.setIsDeleted(0);
        educationRecord.insert();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO addLaboratoryUser(SaveEducationRecordDTO saveEducationRecordDTO) {
        // 设置真实姓名
        userInfoService.setRealName(saveEducationRecordDTO.getUserId(), saveEducationRecordDTO.getRealName());
        // 给实验室人员增加档案信息
        educationRecordService.addEducationRecord(saveEducationRecordDTO);
        // 基本用户变更实验室用户
        userNodeService.userChangeLaboratory(saveEducationRecordDTO.getUserId());
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateEducationRecord(SaveEducationRecordDTO saveEducationRecordDTO) {
        // 合法性校验
        if (null == saveEducationRecordDTO.getId() || null == saveEducationRecordDTO.getAcademicDegree()
                || StringUtils.isEmpty(saveEducationRecordDTO.getAcademicDegreeCertificateNo())
                || null == saveEducationRecordDTO.getAcademicQualifications() || StringUtils.isEmpty(saveEducationRecordDTO.getGraduationCertificateNo())
                || null == saveEducationRecordDTO.getGraduationDate() || null == saveEducationRecordDTO.getSchool()
                || null == saveEducationRecordDTO.getUserId()) {
            return ParamErrorVO.getInstance();
        }
        EducationRecord educationRecord = new EducationRecord();
        // 设置学位
        educationRecord.setAcademicDegree(saveEducationRecordDTO.getAcademicDegree());
        // 设置毕业证书编号
        educationRecord.setGraduationCertificateNo(saveEducationRecordDTO.getGraduationCertificateNo());
        // 设置学位证书编号
        educationRecord.setAcademicDegreeCertificateNo(saveEducationRecordDTO.getAcademicDegreeCertificateNo());
        educationRecord.setAcademicQualifications(saveEducationRecordDTO.getAcademicQualifications());
        Calendar calendar = Calendar.getInstance();
        educationRecord.setGmtModified(calendar.getTime());
        // 毕业日期
        educationRecord.setGraduationDate(saveEducationRecordDTO.getGraduationDate());
        educationRecord.setSchool(saveEducationRecordDTO.getSchool());
        educationRecord.setUserId(saveEducationRecordDTO.getUserId());
        educationRecord.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        EducationRecord educationRecord = educationRecordMapper.selectById(id);
        if (null == educationRecord || 1 == educationRecord.getIsDeleted()) {
            return new ErrorVO("学历记录不存在");
        }
        EducationRecordVO educationRecordVO = new EducationRecordVO();
        BeanUtils.copyProperties(educationRecord, educationRecordVO);
        return new DetailResultVO(educationRecordVO);
    }

    @Override
    public BaseVO getSelfEducationRecord(HttpSession httpSession) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        if (1 == sessionDTO.getRoleDTO().getLevel()) {
            return new ErrorVO("权限错误");
        }
        EducationRecord educationRecord = educationRecordMapper.selectByUserId(sessionDTO.getUserInfoDTO().getId());
        if (null == educationRecord) {
            return new ErrorVO("档案未建立");
        }
        // 创建一个复杂的档案
        ComplexEducationRecordVO complexEducationRecordVO = new ComplexEducationRecordVO();
        // 创建一个简单的学历
        SimpleEducationRecordVO simpleEducationRecordVO = new SimpleEducationRecordVO();
        // 设置学历基本信息
        simpleEducationRecordVO.setAcademicDegree(ConfigOptionConstruct.getOptionById(educationRecord.getAcademicDegree()).getKey());
        simpleEducationRecordVO.setAcademicDegreeCertificateNo(educationRecord.getAcademicDegreeCertificateNo());
        simpleEducationRecordVO.setAcademicQualifications(ConfigOptionConstruct.getOptionById(educationRecord.getAcademicQualifications()).getKey());
        simpleEducationRecordVO.setGmtCreate(MyDateUtil.simpleDateFormat(educationRecord.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        simpleEducationRecordVO.setGraduationCertificateNo(educationRecord.getGraduationCertificateNo());
        simpleEducationRecordVO.setGraduationDate(MyDateUtil.simpleDateFormat(educationRecord.getGraduationDate(), MyDateUtil.YYYY_MM_DD_C));
        // 获取大学信息
        UniversityDTO universityDTO = universityService.getUniversityDTO(educationRecord.getSchool());
        simpleEducationRecordVO.setSchool(universityDTO == null? "" : universityDTO.getUniversityName());
        simpleEducationRecordVO.setWebsite(universityDTO == null? "" : universityDTO.getWebsite());
        simpleEducationRecordVO.setId(educationRecord.getId());
        // 获取一个简单的基本信息
        SimpleUserInfoVO simpleUserInfoVO = userInfoService.getSimpleUserInfoVO(sessionDTO.getUserInfoDTO().getId());
        // 获取简单的工作经历列表
        List<SimpleWorkRecordVO> simpleWorkRecordVOList = workRecordService.getSimpleWorkRecordVOList(sessionDTO.getUserInfoDTO().getId());
        // 设置基本信息
        complexEducationRecordVO.setSimpleUserInfoVO(simpleUserInfoVO);
        // 设置工作经历
        complexEducationRecordVO.setSimpleWorkRecordVOList(simpleWorkRecordVOList);
        // 设置学历
        complexEducationRecordVO.setSimpleEducationRecordVO(simpleEducationRecordVO);
        return new DetailResultVO(complexEducationRecordVO);
    }
}
