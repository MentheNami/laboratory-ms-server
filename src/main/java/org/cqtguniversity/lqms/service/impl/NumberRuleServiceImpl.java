package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.construct.NumStructureConstruct;
import org.cqtguniversity.lqms.entity.NumberRule;
import org.cqtguniversity.lqms.mapper.NumberRuleMapper;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SaveNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.dto.numberrule.SearchNumberRuleDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.config.KeyAndValueVO;
import org.cqtguniversity.lqms.pojo.vo.numberrule.NumberRuleVO;
import org.cqtguniversity.lqms.pojo.vo.numberrule.SimpleNumberRuleVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.text.DecimalFormat;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * <p>
 * 编号规则 服务实现类
 * </p>
 *
 * @author Wang26211
 * @since 2018-04-30
 */
@Service
public class NumberRuleServiceImpl extends ServiceImpl<NumberRuleMapper, NumberRule> implements NumberRuleService {

    private final NumberRuleMapper numberRuleMapper;

    @Autowired
    public NumberRuleServiceImpl(NumberRuleMapper numberRuleMapper) {
        this.numberRuleMapper = numberRuleMapper;
    }

    private SimpleNumberRuleVO transferSimpleNumberRuleVO(NumberRule numberRule) {
        //创建一个编号规则VO
        SimpleNumberRuleVO  simpleNumberRuleVO = new SimpleNumberRuleVO();
        //设置ID
        simpleNumberRuleVO.setId(numberRule.getId());
        //设置前缀编号
        simpleNumberRuleVO.setPrefixNumber(numberRule.getPrefixNumber());
        simpleNumberRuleVO.setGmtCreate(MyDateUtil.simpleDateFormat(numberRule.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        DecimalFormat decimalFormat = new DecimalFormat("00000");
        //设置下一个编号
        simpleNumberRuleVO.setNextNumber(decimalFormat.format(numberRule.getNextNumber()));
        //通过规则类型ID获取规则类型KeyAndValueVO对象
        KeyAndValueVO ruleTypeKeyAndValueVO = ConfigOptionConstruct.getOptionById(numberRule.getRuleType());
        //设置规则类型
        simpleNumberRuleVO.setRuleType(ruleTypeKeyAndValueVO == null? "" : ruleTypeKeyAndValueVO.getKey());
        //返回规则类型VO
        return simpleNumberRuleVO;
    }

    private String getPrefix(String numType, String type) {
        // 查询数据库中所有编号规则
        List<NumberRule> numberRuleList = numberRuleMapper.selectList(new EntityWrapper<>());
        // 转换为一个ruleType(Long) 对应一个规则
        Map<Long, NumberRule> ruleMap = numberRuleList.stream().collect(Collectors.toMap(NumberRule::getRuleType, Function.identity()));
        // 通过编号类型查找ID
        Long rule_id = ConfigOptionConstruct.getOptionIdByValue(numType);
        // 通过id查找编号规则对象
        NumberRule numberRule = ruleMap.get(rule_id);
        // 获取编号规则对象中的前缀编号
        String prefix = numberRule.getPrefixNumber();
        Calendar calendar = Calendar.getInstance();
        DecimalFormat decimalFormat = new DecimalFormat("00000");
        // 包含年份规则
        if (prefix.contains(NumStructureConstruct.YEAR)) {
            prefix = prefix.replace(NumStructureConstruct.YEAR, "" + calendar.get(Calendar.YEAR));
        }
        // 包含月份规则
        if (prefix.contains(NumStructureConstruct.MONTH)) {
            prefix = prefix.replace(NumStructureConstruct.MONTH, "" + calendar.get(Calendar.MONTH));
        }
        // 包含日规则
        if (prefix.contains(NumStructureConstruct.DAY)) {
            prefix = prefix.replace(NumStructureConstruct.DAY, "" + calendar.get(Calendar.DAY_OF_MONTH));
        }
        // 包含编号规则
        if (prefix.contains(NumStructureConstruct.NUM)) {
            prefix = prefix.replace(NumStructureConstruct.NUM, "" + decimalFormat.format(numberRule.getNextNumber()));
            // 下一个编号自加1
            numberRule.setNextNumber(numberRule.getNextNumber() + 1);
            // 更新这个实体对应的记录
            numberRule.updateById();
        }
        // 携带的类型不为null
        if (null != type) {
            // 包含类型规则
            if (prefix.contains(NumStructureConstruct.TYPE)) {
                prefix = prefix.replace(NumStructureConstruct.TYPE, "" + type);
            }
        }
        return prefix;
    }

    @Override
    public String getNum(String numType) {
        Assert.notNull(numType, "NumType Option id must is not null");
        return getPrefix(numType, null);
    }

    @Override
    public String getNum(String numType, String type) {
        Assert.notNull(numType, "NumType Option id must is not null");
        Assert.notNull(type, "NumType Option id must is not null");
        return getPrefix(numType, type);
    }

    @Override
    public BaseVO addNumberRule(SaveNumberRuleDTO saveNumberRuleDTO) {
        //合理性判断
        if (null != saveNumberRuleDTO.getId() || null == saveNumberRuleDTO.getNextNumber()
                || null == saveNumberRuleDTO.getRuleType() || StringUtils.isEmpty(saveNumberRuleDTO.getPrefixNumber())) {
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        NumberRule numberRule = new NumberRule();
        //复制编号基本信息
        BeanUtils.copyProperties(saveNumberRuleDTO, numberRule, "id");
        //设置创建时间
        numberRule.setGmtCreate(Calendar.getInstance().getTime());
        //设置修改时间
        numberRule.setGmtModified(Calendar.getInstance().getTime());
        //插入数据
        numberRuleMapper.insert(numberRule);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeByIds(Long[] ids) {
        //合理性判断
        if (null == ids) {
            return ParamErrorVO.getInstance();
        }
        List<Long> tempIds = Arrays.asList(ids);
        //通过Id删除编号规则,直接删除
        numberRuleMapper.deleteBatchIds(tempIds);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateNumberRule(SaveNumberRuleDTO saveNumberRuleDTO) {
        //合理性判断
        if (null == saveNumberRuleDTO.getId() || null == saveNumberRuleDTO.getRuleType()
                || null == saveNumberRuleDTO.getNextNumber() || StringUtils.isEmpty(saveNumberRuleDTO.getPrefixNumber())) {
            //返还一个错误实例
            return ParamErrorVO.getInstance();
        }
        //查询编号是否存在、
        NumberRule numberRule = numberRuleMapper.selectById(saveNumberRuleDTO.getId());
        if (null == numberRule) {
            return new ErrorVO("编号规则不存在");
        }
        //合理性通过，复制编号基本信息
        BeanUtils.copyProperties(saveNumberRuleDTO, numberRule);
        //修改当前时间
        numberRule.setGmtCreate(Calendar.getInstance().getTime());
        //更新编号规则
        numberRuleMapper.updateById(numberRule);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        //合理性判断
        if (null == id) {
            //返回前端逻辑错误
            return ParamErrorVO.getInstance();
        }
        //判断编号规则是否存在
        NumberRule numberRule = numberRuleMapper.selectById(id);
        if (null == numberRule) {
            return new ErrorVO("编号规则不存在");
        }
        NumberRuleVO numberRuleVO = new NumberRuleVO();
        //复制基本信息除了创建时间、修改时间、isDeleted
        numberRuleVO.setId(numberRule.getId());
        DecimalFormat decimalFormat = new DecimalFormat("00000");
        numberRuleVO.setNextNumber(decimalFormat.format(numberRule.getNextNumber()));
        numberRuleVO.setPrefixNumber(numberRule.getPrefixNumber());
        numberRuleVO.setRuleType(numberRule.getRuleType());
        numberRuleVO.setGmtCreate(MyDateUtil.simpleDateFormat(numberRule.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        return new DetailResultVO(numberRuleVO);
    }

    @Override
    public BaseVO getNumberRuleList(SearchNumberRuleDTO searchNumberRuleDTO) {
        //合理性判断
        if(!searchNumberRuleDTO.isLegitimate()){
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<NumberRule> entityWrapper = new EntityWrapper<>();
        //增加模糊查询
        if (!StringUtils.isEmpty(searchNumberRuleDTO.getPrefixNumber())){
            entityWrapper.like("prefix_number", searchNumberRuleDTO.getPrefixNumber());
        }
        if (null != searchNumberRuleDTO.getNextNumber()){
            entityWrapper.like("next_number", searchNumberRuleDTO.getNextNumber().toString());
        }
        if (null != searchNumberRuleDTO.getRuleType()){
            entityWrapper.like("rule_type", searchNumberRuleDTO.getRuleType().toString());
        }
        // 查询总条数
        int total = numberRuleMapper.selectCount(entityWrapper);
        if (0 != total) {
            Page page = new Page(searchNumberRuleDTO.getPage(), searchNumberRuleDTO.getRows());
            List<NumberRule> numberRuleList = numberRuleMapper.selectPage(page, entityWrapper);
            if (null != numberRuleList && 0 != numberRuleList.size()) {
                // 通过Java8 Stream流操作语法糖  将投诉实体集合翻译为VO集合
                List<SimpleNumberRuleVO> simpleNumberRuleVOList = numberRuleList.stream().map(this::transferSimpleNumberRuleVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleNumberRuleVOList);
            }
        }
        return new ListVO<>(0, searchNumberRuleDTO.getPage(), searchNumberRuleDTO.getRows(), new ArrayList<>());
    }
}
