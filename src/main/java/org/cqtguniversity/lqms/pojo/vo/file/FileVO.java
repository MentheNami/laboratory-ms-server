package org.cqtguniversity.lqms.pojo.vo.file;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author wang26211
 * @create 2018- 05- 04- 11:50
 */
public class FileVO extends BaseVO {
    /**
     * 自增序号
     */
    private Long id;
    /**
     * 文件编号
     */
    private String fileNo;
    /**
     * 文件名称
     */
    private String fileName;
    /**
     * 文件路径
     */
    private String filePath;
    /**
     * 文件格式
     */
    private String fileExtension;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFileNo() {
        return fileNo;
    }

    public void setFileNo(String fileNo) {
        this.fileNo = fileNo;
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
    public String toString() {
        return super.toString() +"FileVO{" +
                "id=" + id +
                ", fileNo='" + fileNo + '\'' +
                ", fileName='" + fileName + '\'' +
                ", filePath='" + filePath + '\'' +
                ", fileExtension='" + fileExtension + '\'' +
                '}';
    }
}
