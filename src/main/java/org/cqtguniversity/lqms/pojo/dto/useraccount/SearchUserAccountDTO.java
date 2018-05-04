package org.cqtguniversity.lqms.pojo.dto.useraccount;/**
 * @author wang26211
 * @create 2018- 05- 04- 14:22
 */

import org.cqtguniversity.lqms.pojo.dto.BaseDTO;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author wang26211
 * @create 2018- 05- 04- 14:22
 */
public class SearchUserAccountDTO extends SearchDTO {
    /**
     * 用户名
     */
    private String userName;
    /**
     * 密保问题
     */
    private String question;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchUserAccountDTO{" +
                "userName='" + userName + '\'' +
                ", question='" + question + '\'' +
                '}';
    }
}
