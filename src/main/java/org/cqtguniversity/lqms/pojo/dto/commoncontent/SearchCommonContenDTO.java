package org.cqtguniversity.lqms.pojo.dto.commoncontent;/**
 * @author wang26211
 * @create 2018- 05- 02- 22:39
 */

import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author wang26211
 * @create 2018- 05- 02- 22:39
 */
public class SearchCommonContenDTO extends SearchDTO{
    /**
     * 长文本
     */
    private String content;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return super.toString()+"SearchCommonContenDTO{" +
                "content='" + content + '\'' +
                '}';
    }
}
