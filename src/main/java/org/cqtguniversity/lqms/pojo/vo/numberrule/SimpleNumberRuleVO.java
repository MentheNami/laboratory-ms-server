package org.cqtguniversity.lqms.pojo.vo.numberrule;


import org.cqtguniversity.lqms.pojo.vo.BaseVO;

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
    private String gmtCreate;
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
    private String nextNumber;

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

    public String getNextNumber() {
        return nextNumber;
    }

    public void setNextNumber(String nextNumber) {
        this.nextNumber = nextNumber;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleNumberRuleVO{" +
                "id=" + id +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", ruleType='" + ruleType + '\'' +
                ", prefixNumber='" + prefixNumber + '\'' +
                ", nextNumber='" + nextNumber + '\'' +
                '}';
    }
}
