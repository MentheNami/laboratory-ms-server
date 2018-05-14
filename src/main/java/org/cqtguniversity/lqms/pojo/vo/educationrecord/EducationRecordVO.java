package org.cqtguniversity.lqms.pojo.vo.educationrecord;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 13- 13:04
 */

public class EducationRecordVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 毕业日期
     */
    private Date graduationDate;
    /**
     * 毕业院校
     */
    private Long school;
    /**
     * 学历
     */
    private Long academicQualifications;
    /**
     * 学位
     */
    private Long academicDegree;
    /**
     * 毕业证书编号
     */
    private String graduationCertificateNo;
    /**
     * 学位证书编号
     */
    private String academicDegreeCertificateNo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getGraduationDate() {
        return graduationDate;
    }

    public void setGraduationDate(Date graduationDate) {
        this.graduationDate = graduationDate;
    }

    public Long getSchool() {
        return school;
    }

    public void setSchool(Long school) {
        this.school = school;
    }

    public Long getAcademicQualifications() {
        return academicQualifications;
    }

    public void setAcademicQualifications(Long academicQualifications) {
        this.academicQualifications = academicQualifications;
    }

    public Long getAcademicDegree() {
        return academicDegree;
    }

    public void setAcademicDegree(Long academicDegree) {
        this.academicDegree = academicDegree;
    }

    public String getGraduationCertificateNo() {
        return graduationCertificateNo;
    }

    public void setGraduationCertificateNo(String graduationCertificateNo) {
        this.graduationCertificateNo = graduationCertificateNo;
    }

    public String getAcademicDegreeCertificateNo() {
        return academicDegreeCertificateNo;
    }

    public void setAcademicDegreeCertificateNo(String academicDegreeCertificateNo) {
        this.academicDegreeCertificateNo = academicDegreeCertificateNo;
    }

    @Override
    public String toString() {
        return super.toString() + "EducationRecordVO{" +
                "id=" + id +
                ", userId=" + userId +
                ", graduationDate=" + graduationDate +
                ", school=" + school +
                ", academicQualifications=" + academicQualifications +
                ", academicDegree=" + academicDegree +
                ", graduationCertificateNo='" + graduationCertificateNo + '\'' +
                ", academicDegreeCertificateNo='" + academicDegreeCertificateNo + '\'' +
                '}';
    }
}
