package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.EducationRecord;
import org.cqtguniversity.lqms.mapper.EducationRecordMapper;
import org.cqtguniversity.lqms.pojo.dto.educationrecord.SaveEducationRecordDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.educationrecord.EducationRecordVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.EducationRecordService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Calendar;

/**
 * 人员学历及学位记录 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class EducationRecordServiceImpl extends ServiceImpl<EducationRecordMapper, EducationRecord> implements EducationRecordService {

    private final EducationRecordMapper educationRecordMapper;

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
}
