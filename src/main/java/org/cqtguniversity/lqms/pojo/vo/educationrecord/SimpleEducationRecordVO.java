package org.cqtguniversity.lqms.pojo.vo.educationrecord;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.SimpleUserInfoVO;
import org.cqtguniversity.lqms.pojo.vo.workrecord.SimpleWorkRecordVO;

import java.util.List;

/**
 * @author Tangshengyu
 * @create 2018- 05- 14- 10:34
 */

public class SimpleEducationRecordVO extends BaseVO {


    /**
     * 自增序号
     */
    private Long id;
    /**
     * 档案建立时间
     */
    private String gmtCreate;
    /**
     * 毕业日期
     */
    private String graduationDate;
    /**
     * 毕业院校
     */
    private String school;
    /**
     * 毕业网站
     */
    private String website;
    /**
     * 学历
     */
    private String academicQualifications;
    /**
     * 学位
     */
    private String academicDegree;
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

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getGraduationDate() {
        return graduationDate;
    }

    public void setGraduationDate(String graduationDate) {
        this.graduationDate = graduationDate;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getAcademicQualifications() {
        return academicQualifications;
    }

    public void setAcademicQualifications(String academicQualifications) {
        this.academicQualifications = academicQualifications;
    }

    public String getAcademicDegree() {
        return academicDegree;
    }

    public void setAcademicDegree(String academicDegree) {
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
        return super.toString() + "SimpleEducationRecordVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", graduationDate='" + graduationDate + '\'' +
                ", school='" + school + '\'' +
                ", website='" + website + '\'' +
                ", academicQualifications='" + academicQualifications + '\'' +
                ", academicDegree='" + academicDegree + '\'' +
                ", graduationCertificateNo='" + graduationCertificateNo + '\'' +
                ", academicDegreeCertificateNo='" + academicDegreeCertificateNo + '\'' +
                '}';
    }
}
