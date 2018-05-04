package org.cqtguniversity.lqms.pojo.vo.file;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 13:55
 */

public class SimpleAttachedFileVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private String gmtCreate;
    /**
     * 文件编号
     */
    private String fileNo;
    /**
     * 上传者
     */
    private String uploadedBy;
    /**
     * 文件类型
     */
    private String fileType;
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

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getFileNo() {
        return fileNo;
    }

    public void setFileNo(String fileNo) {
        this.fileNo = fileNo;
    }

    public String getUploadedBy() {
        return uploadedBy;
    }

    public void setUploadedBy(String uploadedBy) {
        this.uploadedBy = uploadedBy;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
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
        return super.toString() + "SimpleAttachedFileVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", fileNo='" + fileNo + '\'' +
                ", uploadedBy='" + uploadedBy + '\'' +
                ", fileType='" + fileType + '\'' +
                ", fileName='" + fileName + '\'' +
                '}';
    }
}
