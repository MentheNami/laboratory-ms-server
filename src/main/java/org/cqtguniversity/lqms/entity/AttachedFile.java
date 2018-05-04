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
 * 文件表
 * </p>
 *
 * @author Wang26211
 * @since 2018-05-04
 */
@TableName("attached_file")
public class AttachedFile extends Model<AttachedFile> {

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
     * 文件编号
     */
	@TableField("file_no")
	private String fileNo;
    /**
     * 上传者
     */
	@TableField("uploaded_by")
	private Long uploadedBy;
    /**
     * 文件类型
     */
	@TableField("file_type")
	private Long fileType;
    /**
     * 文件名称
     */
	@TableField("file_name")
	private String fileName;
    /**
     * 文件路径
     */
	@TableField("file_path")
	private String filePath;
    /**
     * 文件格式
     */
	@TableField("file_extension")
	private String fileExtension;


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

	public String getFileNo() {
		return fileNo;
	}

	public void setFileNo(String fileNo) {
		this.fileNo = fileNo;
	}

	public Long getUploadedBy() {
		return uploadedBy;
	}

	public void setUploadedBy(Long uploadedBy) {
		this.uploadedBy = uploadedBy;
	}

	public Long getFileType() {
		return fileType;
	}

	public void setFileType(Long fileType) {
		this.fileType = fileType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileExtension() {
		return fileExtension;
	}

	public void setFileExtension(String fileExtension) {
		this.fileExtension = fileExtension;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "AttachedFile{" +
			"id=" + id +
			", gmtCreate=" + gmtCreate +
			", gmtModified=" + gmtModified +
			", fileNo=" + fileNo +
			", uploadedBy=" + uploadedBy +
			", fileType=" + fileType +
			", fileName=" + fileName +
			", filePath=" + filePath +
			", fileExtension=" + fileExtension +
			"}";
	}
}
