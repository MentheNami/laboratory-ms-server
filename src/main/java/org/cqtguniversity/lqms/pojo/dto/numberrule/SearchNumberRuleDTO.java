package org.cqtguniversity.lqms.pojo.dto.numberrule;
import org.cqtguniversity.lqms.pojo.dto.SearchDTO;

/**
 * @author wang26211
 * @create 2018- 05- 03- 9:35
 */
public class SearchNumberRuleDTO extends SearchDTO{
    /**
     * 规则类型
     */
    private Long ruleType;
    /**
     * 编号前缀
     */
    private String prefixNumber;
    /**
     * 下一个编号
     */
    private Long nextNumber;

    public Long getRuleType() {
        return ruleType;
    }

    public void setRuleType(Long ruleType) {
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
        return super.toString()+"SearchNumberRuleDTO{" +
                "ruleType=" + ruleType +
                ", prefixNumber='" + prefixNumber + '\'' +
                ", nextNumber=" + nextNumber +
                '}';
    }
}
