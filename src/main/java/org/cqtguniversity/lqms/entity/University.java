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
 * 
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-13
 */
@TableName("university")
public class University extends Model<University> {

    private static final long serialVersionUID = 1L;

    /**
     * 序号自增
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
     * 大学名称
     */
	@TableField("university_name")
	private String universityName;
    /**
     * 身份Id
     */
	@TableField("province_id")
	private Long provinceId;
    /**
     * 级别
     */
	private Long level;
    /**
     * 网站
     */
	private String website;
    /**
     * 城市
     */
	private String city;


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

	public String getUniversityName() {
		return universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public Long getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(Long provinceId) {
		this.provinceId = provinceId;
	}

	public Long getLevel() {
		return level;
	}

	public void setLevel(Long level) {
		this.level = level;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "University{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", universityName=" + universityName +
			", provinceId=" + provinceId +
			", level=" + level +
			", website=" + website +
			", city=" + city +
			"}";
	}
}
