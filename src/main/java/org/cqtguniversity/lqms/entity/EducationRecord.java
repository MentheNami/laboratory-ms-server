package org.cqtguniversity.lqms.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 人员学历及学位记录
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@TableName("education_record")
public class EducationRecord extends Model<EducationRecord> {

    private static final long serialVersionUID = 1L;

    /**
     * 自增序号
     */
	@TableId(value="id", type= IdType.AUTO)
	private Long id;
    /**
     * 创建时间
     */
	@TableField("gmt_create")
	private Date gmtCreate;
    /**
     * 修改时间
     */
	@TableField("gmt_modified")
	private Date gmtModified;
    /**
     * 用户ID
     */
	@TableField("user_id")
	private Long userId;
    /**
     * 毕业日期
     */
	@TableField("graduation_date")
	private Date graduationDate;
    /**
     * 毕业院校
     */
	private Long school;
    /**
     * 专业
     */
	private Long major;
    /**
     * 学历
     */
	@TableField("academic_qualifications")
	private Long academicQualifications;
    /**
     * 学位
     */
	@TableField("academic_degree")
	private Long academicDegree;
    /**
     * 毕业证书编号
     */
	@TableField("graduation_certificate_no")
	private String graduationCertificateNo;
    /**
     * 学位证书编号
     */
	@TableField("academic_degree_certificate_no")
	private String academicDegreeCertificateNo;
    /**
     * 逻辑删除
     */
	@TableField("is_deleted")
	private Integer isDeleted;


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getGmtCreate() {
		return gmtCreate;
	}

	public void setGmtCreate(Date gmtCreate) {
		this.gmtCreate = gmtCreate;
	}

	public Date getGmtModified() {
		return gmtModified;
	}

	public void setGmtModified(Date gmtModified) {
		this.gmtModified = gmtModified;
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

	public Long getMajor() {
		return major;
	}

	public void setMajor(Long major) {
		this.major = major;
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

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "EducationRecord{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", userId=" + userId +
			", graduationDate=" + graduationDate +
			", school=" + school +
			", major=" + major +
			", academicQualifications=" + academicQualifications +
			", academicDegree=" + academicDegree +
			", graduationCertificateNo=" + graduationCertificateNo +
			", academicDegreeCertificateNo=" + academicDegreeCertificateNo +
			", isDeleted=" + isDeleted +
			"}";
	}
}
