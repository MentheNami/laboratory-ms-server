package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.cqtguniversity.lqms.entity.ConfigOptionDetail;
import org.cqtguniversity.lqms.mapper.ConfigOptionDetailMapper;
import org.cqtguniversity.lqms.pojo.dto.config.SaveConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.dto.config.SearchConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.config.ConfigOptionDetailVO;
import org.cqtguniversity.lqms.pojo.vo.config.KeyAndValueVO;
import org.cqtguniversity.lqms.pojo.vo.config.SimpleConfigOptionDetailVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.ConfigOptionDetailService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 * 配置选项详情 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class ConfigOptionDetailServiceImpl extends ServiceImpl<ConfigOptionDetailMapper, ConfigOptionDetail> implements ConfigOptionDetailService {

    private final ConfigOptionDetailMapper configOptionDetailMapper;

    @Autowired
    public ConfigOptionDetailServiceImpl(ConfigOptionDetailMapper configOptionDetailMapper) {
        this.configOptionDetailMapper = configOptionDetailMapper;
    }

    private ConfigOptionDetailVO transferToConfigOptionDetailVO(ConfigOptionDetail configOptionDetail) {
        ConfigOptionDetailVO configOptionDetailVO = new ConfigOptionDetailVO();
        BeanUtils.copyProperties(configOptionDetail, configOptionDetailVO);
        return configOptionDetailVO;
    }

    private SimpleConfigOptionDetailVO transferToSimpleConfigOptionDetailVO(ConfigOptionDetail configOptionDetail) {
        SimpleConfigOptionDetailVO simpleConfigOptionDetailVO = new SimpleConfigOptionDetailVO();
        KeyAndValueVO keyAndValueVO = ConfigOptionConstruct.getGroupById(configOptionDetail.getGroupId());
        if (null == keyAndValueVO) {
            System.out.println("配置错误");
        } else {
            simpleConfigOptionDetailVO.setGroupName(keyAndValueVO.getValue());
        }
        if (null != configOptionDetail.getGmtCreate()) {
            simpleConfigOptionDetailVO.setGmtCreate(MyDateUtil.simpleDateFormat(configOptionDetail.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        }
        simpleConfigOptionDetailVO.setId(configOptionDetail.getId());
        simpleConfigOptionDetailVO.setOptionName(configOptionDetail.getOptionName());
        simpleConfigOptionDetailVO.setOptionValue(configOptionDetail.getOptionValue());
        simpleConfigOptionDetailVO.setSystem(configOptionDetail.getSystem() == 0 ? "否" : "是");
        simpleConfigOptionDetailVO.setPriority(configOptionDetail.getPriority());
        simpleConfigOptionDetailVO.setUseCount(configOptionDetail.getUseCount());
        return simpleConfigOptionDetailVO;
    }

    @Override
    public List<ConfigOptionDetailVO> selectListByGroupId(Long groupId) {
        List<ConfigOptionDetail> configOptionDetailList = configOptionDetailMapper.selectList(new EntityWrapper<ConfigOptionDetail>().where("group_id={0}", groupId).and("is_deleted={0}",0));
        if (null == configOptionDetailList || 0 == configOptionDetailList.size()) {
            return null;
        }
        return configOptionDetailList.stream().map(this::transferToConfigOptionDetailVO).collect(Collectors.toList());
    }

    @Override
    public List<ConfigOptionDetailVO> selectList() {
        List<ConfigOptionDetail> configOptionDetailList = configOptionDetailMapper.selectList(new EntityWrapper<ConfigOptionDetail>().where("is_deleted={0}",0));
        if (null == configOptionDetailList || 0 == configOptionDetailList.size()) {
            return null;
        }
        return configOptionDetailList.stream().map(this::transferToConfigOptionDetailVO).collect(Collectors.toList());
    }

    @Override
    public BaseVO selectById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        ConfigOptionDetail configOptionDetail = configOptionDetailMapper.selectById(id);
        if (null == configOptionDetail) {
            return new ErrorVO("获取单个配置详情失败");
        }
        return new DetailResultVO(transferToConfigOptionDetailVO(configOptionDetail));
    }

    @Override
    public BaseVO selectConfigOptionList(SearchConfigOptionDTO searchConfigOptionDTO) {
        // 合法性验证
        if (!searchConfigOptionDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<ConfigOptionDetail> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("is_deleted={0}", 0);
        if (null != searchConfigOptionDTO.getGroupId()) {
            entityWrapper.and("group_id={0}", searchConfigOptionDTO.getGroupId());
        }
        if (!StringUtils.isEmpty(searchConfigOptionDTO.getOptionName())) {
            entityWrapper.like("option_name={0}", searchConfigOptionDTO.getOptionValue());
        }
        if (!StringUtils.isEmpty(searchConfigOptionDTO.getOptionValue())) {
            entityWrapper.like("option_value={0}", searchConfigOptionDTO.getOptionValue());
        }
        int total = configOptionDetailMapper.selectCount(entityWrapper);
        Page page = new Page(searchConfigOptionDTO.getPage(), searchConfigOptionDTO.getRows());
        if (0 != total) {
            List<ConfigOptionDetail> configOptionDetailList = configOptionDetailMapper.selectPage(page, entityWrapper);
            if (null != configOptionDetailList && 0 != configOptionDetailList.size()) {
                List<SimpleConfigOptionDetailVO> simpleConfigOptionDetailVOList = configOptionDetailList.stream().map(this::transferToSimpleConfigOptionDetailVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleConfigOptionDetailVOList);
            }
        }
        return new ListVO<SimpleConfigOptionDetailVO>(total,page, new ArrayList<>());
    }

    @Override
    public BaseVO selectByGroupId(Long groupId) {
        if (null == groupId) {
            return ParamErrorVO.getInstance();
        }
        List<ConfigOptionDetail> configOptionDetailList = configOptionDetailMapper.selectList(new EntityWrapper<ConfigOptionDetail>().where("group_id={0}", groupId).and("is_deleted={0}",0));
        if (null == configOptionDetailList || 0 == configOptionDetailList.size()) {
            return null;
        }
        List<SimpleConfigOptionDetailVO> simpleConfigOptionDetailVOList = configOptionDetailList.stream().map(this::transferToSimpleConfigOptionDetailVO).collect(Collectors.toList());
        if (null == simpleConfigOptionDetailVOList || 0 == simpleConfigOptionDetailVOList.size()) {
            return new ListVO<ConfigOptionDetailVO>(0, 0, 0, new ArrayList<>());
        }
        return new ListVO<>(simpleConfigOptionDetailVOList.size(), 1, simpleConfigOptionDetailVOList.size(), simpleConfigOptionDetailVOList);
    }

    @Override
    public BaseVO updateOptionDetail(Integer id, String optionName, String optionValue) {
        // 验证合法性
        if (null == id || StringUtils.isEmpty(optionName) || StringUtils.isEmpty(optionValue)) {
            return ParamErrorVO.getInstance();
        }
        ConfigOptionDetail configOptionDetail = configOptionDetailMapper.selectById(id);
        if (null == configOptionDetail || 1 == configOptionDetail.getIsDeleted()) {
            return new ErrorVO("该配置选项不存在");
        }
        if(configOptionDetail.getSystem() == 1) {
            return new ErrorVO("系统属性不能修改");
        }
        if (!ConfigOptionConstruct.isUniqueOption(configOptionDetail.getGroupId(), optionName, optionValue)) {
            return new ErrorVO("配置项名称或值重复");
        }
        // 修改合法性通过
        configOptionDetail.setOptionName(optionName);
        configOptionDetail.setOptionValue(optionValue);
        configOptionDetailMapper.updateById(configOptionDetail);
        // 更新内存配置
        ConfigOptionConstruct.updateOption();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO addOptionDetail(SaveConfigOptionDTO saveConfigOptionDTO) {
        // 合法性验证
        if (!saveConfigOptionDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        if (!ConfigOptionConstruct.isUniqueOption(saveConfigOptionDTO.getGroupId(), saveConfigOptionDTO.getOptionName(), saveConfigOptionDTO.getOptionValue())) {
            return new ErrorVO("配置项名称或值重复");
        }
        ConfigOptionDetail configOptionDetail = new ConfigOptionDetail();
        // 复制基本属性
        BeanUtils.copyProperties(saveConfigOptionDTO, configOptionDetail);
        // 设置默认属性
        Calendar calendar = Calendar.getInstance();
        configOptionDetail.setGmtCreate(calendar.getTime());
        configOptionDetail.setGmtModified(calendar.getTime());
        configOptionDetail.setIsDeleted(0);
        configOptionDetail.setUseCount(0);
        configOptionDetailMapper.insert(configOptionDetail);
        // 更新内存配置
        ConfigOptionConstruct.updateOption();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO deleteOptionDetail(Integer id) {

        // 合法性验证
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        ConfigOptionDetail configOptionDetail = configOptionDetailMapper.selectById(id);
        if (null == configOptionDetail || 1 == configOptionDetail.getIsDeleted()) {
            return new ErrorVO("该配置不存在");
        }
        if (configOptionDetail.getSystem() == 1) {
            return new ErrorVO("系统属性不能删除");
        }
        if (configOptionDetail.getUseCount() > 0) {
            return new ErrorVO("配置正在使用不能删除，请先删除使用配置的地方");
        }

        // 合法性通过
        configOptionDetail.setIsDeleted(1);
        configOptionDetail.setGmtModified(Calendar.getInstance().getTime());
        configOptionDetailMapper.updateById(configOptionDetail);

        // 更新内存配置
        ConfigOptionConstruct.updateOption();
        return SuccessVO.getInstance();
    }

    @Override
    public boolean isUseGroup(Long groupId) {
        EntityWrapper<ConfigOptionDetail> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("group_id={0}", groupId);
        int count = configOptionDetailMapper.selectCount(entityWrapper);
        return count != 0;
    }

    @Override
    public void addUseCount(Long id) {
        // 断言传入的Id必须不为空
        Assert.notNull(id, "Config Option id must is not null");
        configOptionDetailMapper.addUseCountById(id, Calendar.getInstance().getTime());
        // 更新配置选项
        ConfigOptionConstruct.updateOption();
    }

    @Override
    public void addUseCount(Map<Long, Long> optionIdsMap) {
        Assert.notNull(optionIdsMap, "Config Option optionIdsMap must is not null");
        configOptionDetailMapper.addUseCountByIds(optionIdsMap, Calendar.getInstance().getTime());
        // 更新配置选项
        ConfigOptionConstruct.updateOption();
    }

    @Override
    public void removeUseCount(Long id) {
        Assert.notNull(id, "Config Option id must is not null");
        configOptionDetailMapper.removeUseCountById(id, Calendar.getInstance().getTime());
        // 更新配置选项
        ConfigOptionConstruct.updateOption();
    }

    @Override
    public void removeUseCount(Map<Long, Long> optionIdsMap) {
        Assert.notNull(optionIdsMap, "Config Option optionIdsMap must is not null");
        configOptionDetailMapper.removeUseCountByIds(optionIdsMap, Calendar.getInstance().getTime());
        // 更新配置选项
        ConfigOptionConstruct.updateOption();
    }
}
