package org.cqtguniversity.lqms.pojo.dto.commoncontent;/**
 * @author wang26211
 * @create 2018- 05- 02- 22:31
 */

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;

/**
 * @author wang26211
 * @create 2018- 05- 02- 22:31
 */
public class SaveCommonContentDTO extends BaseDTO {
    /**
     * 自增-序号
     */
    private Long id;
    /**
     * 长文本
     */
    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return super.toString()+"SaveCommonContentDTO{" +
                "id=" + id +
                ", content='" + content + '\'' +
                '}';
    }
}
