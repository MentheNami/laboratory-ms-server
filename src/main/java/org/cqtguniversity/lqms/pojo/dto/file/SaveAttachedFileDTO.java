package org.cqtguniversity.lqms.pojo.dto.file;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 13:34
 */

public class SaveAttachedFileDTO extends BaseDTO {

    /**
     * 自增序号
     */
    private Long id;
    /**
     * 文件类型
     */
    private Long fileType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFileType() {
        return fileType;
    }

    public void setFileType(Long fileType) {
        this.fileType = fileType;
    }

    @Override
    public String toString() {
        return super.toString() + "SaveAttachedFileDTO{" +
                "id=" + id +
                ", fileType=" + fileType +
                '}';
    }
}
