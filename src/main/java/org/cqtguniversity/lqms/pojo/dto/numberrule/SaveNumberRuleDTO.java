package org.cqtguniversity.lqms.pojo.dto.numberrule;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.dto.BaseDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author wang26211
 * @create 2018- 05- 03- 9:29
 */
public class SaveNumberRuleDTO extends BaseDTO{
    /**
     * 自增序号
     */
    private Long id;
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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
        return super.toString()+ "SaveNumberRuleDTO{" +
                "id=" + id +
                ", ruleType=" + ruleType +
                ", prefixNumber='" + prefixNumber + '\'' +
                ", nextNumber=" + nextNumber +
                '}';
    }
}
