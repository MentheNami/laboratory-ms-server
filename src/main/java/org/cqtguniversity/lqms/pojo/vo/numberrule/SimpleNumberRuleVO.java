package org.cqtguniversity.lqms.pojo.vo.numberrule;


import com.baomidou.mybatisplus.annotations.TableField;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author wang26211
 * @create 2018- 05- 04- 10:20
 */
public class SimpleNumberRuleVO extends BaseVO {
    /**
     * 自增序号
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 规则类型
     */
    private String ruleType;
    /**
     * 编号前缀
     */
    private String prefixNumber;
    /**
     * 下一个编号
     */
    private Long nextNumber;

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

    public String getRuleType() {
        return ruleType;
    }

    public void setRuleType(String ruleType) {
        this.ruleType = ruleType;
    }

    public String getPrefixNumber() {
        return prefixNumber;
    }

    public void setPrefixNumber(String prefixNumber) {
        this.prefixNumber = prefixNumber;
    }

    public Long getNextNumber() {
        return nextNumber;
    }

    public void setNextNumber(Long nextNumber) {
        this.nextNumber = nextNumber;
    }

    @Override
    public String toString() {
        return super.toString() +"SimpleNumberRuleVO{" +
                "id=" + id +
                ", gmtCreate=" + gmtCreate +
                ", ruleType='" + ruleType + '\'' +
                ", prefixNumber='" + prefixNumber + '\'' +
                ", nextNumber=" + nextNumber +
                '}';
    }
}
