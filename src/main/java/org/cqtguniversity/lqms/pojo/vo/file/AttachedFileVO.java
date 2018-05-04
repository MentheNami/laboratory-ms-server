package org.cqtguniversity.lqms.pojo.vo.file;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 13:52
 */

public class AttachedFileVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 文件编号
     */
    private String fileNo;
    /**
     * 上传者
     */
    private Long uploadedBy;
    /**
     * 文件类型
     */
    private Long fileType;
    /**
     * 文件名称
     */
    private String fileName;

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

    @Override
    public String toString() {
        return super.toString() + "AttachedFileVO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", fileNo='" + fileNo + '\'' +
                ", uploadedBy=" + uploadedBy +
                ", fileType=" + fileType +
                ", fileName='" + fileName + '\'' +
                '}';
    }
}
