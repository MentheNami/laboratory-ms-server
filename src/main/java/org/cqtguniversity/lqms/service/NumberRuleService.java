package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.NumberRule;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SaveNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SearchNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * <p>
 * 编号规则 服务类
 * </p>
 * @author Wang26211
 * @since 2018-05-3
 */
public interface NumberRuleService extends IService<NumberRule> {

    // 获取一个编号规则根据类型
    String getNum(String numType);
    // 获取一个携带类型的编号规则根据类
    String getNum(String numType, String type);
    //增加编号规则
    BaseVO addNumberRule(SaveNumberRuleDTO saveNumberRuleDTO);
    // 删除实验室通过IDS
    BaseVO removeByIds(Long[] ids);
    //更新编号规则
    BaseVO updateNumberRule(SaveNumberRuleDTO saveNumberRuleDTO);
    //查询编号规则详情通过Id
    BaseVO selectById(Long id);
    //查询编号规则列表
    BaseVO getNumberRuleList(SearchNumberRuleDTO searchNumberRuleDTO);
}
