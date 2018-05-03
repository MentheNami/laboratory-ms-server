package org.cqtguniversity.lqms.pojo.vo.numberrule;/**
 * @author wang26211
 * @create 2018- 05- 03- 14:49
 */

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author wang26211
 * @create 2018- 05- 03- 14:49
 */
public class NumberRuleVO extends BaseVO {
    /**
     * 自增序号
     */
    private Long id;
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
        return super.toString()+"NumberRuleVO{" +
                "id=" + id +
                ", ruleType=" + ruleType +
                ", prefixNumber='" + prefixNumber + '\'' +
                ", nextNumber=" + nextNumber +
                '}';
    }
}
