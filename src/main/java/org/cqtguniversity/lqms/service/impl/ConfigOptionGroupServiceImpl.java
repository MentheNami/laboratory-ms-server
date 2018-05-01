package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.cqtguniversity.lqms.entity.ConfigOptionGroup;
import org.cqtguniversity.lqms.mapper.ConfigOptionGroupMapper;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SaveConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SearchConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.config.ConfigOptionGroupVO;
import org.cqtguniversity.lqms.pojo.vo.config.KeyAndValueVO;
import org.cqtguniversity.lqms.pojo.vo.config.SimpleConfigGroupVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.ConfigOptionDetailService;
import org.cqtguniversity.lqms.service.ConfigOptionGroupService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 配置选项组 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class ConfigOptionGroupServiceImpl extends ServiceImpl<ConfigOptionGroupMapper, ConfigOptionGroup> implements ConfigOptionGroupService {

    private final ConfigOptionGroupMapper configOptionGroupMapper;

    private final ConfigOptionDetailService configOptionDetailService;

    @Autowired
    public ConfigOptionGroupServiceImpl(ConfigOptionGroupMapper configOptionGroupMapper, ConfigOptionDetailService configOptionDetailService) {
        this.configOptionGroupMapper = configOptionGroupMapper;
        this.configOptionDetailService = configOptionDetailService;
    }

    private SimpleConfigGroupVO transferToSimpleConfigGroupVO(ConfigOptionGroup configOptionGroup) {
        SimpleConfigGroupVO simpleConfigGroupVO = new SimpleConfigGroupVO();
        BeanUtils.copyProperties(configOptionGroup, simpleConfigGroupVO, "gmtCreate");
        simpleConfigGroupVO.setGmtCreate(MyDateUtil.simpleDateFormat(configOptionGroup.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        return simpleConfigGroupVO;
    }

    private ConfigOptionGroupVO transferToVConfigOptionGroupVO(ConfigOptionGroup configOptionGroup) {
        ConfigOptionGroupVO configOptionGroupVO = new ConfigOptionGroupVO();
        configOptionGroupVO.setId(configOptionGroup.getId());
        configOptionGroupVO.setGroupKey(configOptionGroup.getGroupKey());
        configOptionGroupVO.setGroupName(configOptionGroup.getGroupName());
        if (null != configOptionGroup.getId()) {
            configOptionGroupVO.setConfigOptionDetailVOList(configOptionDetailService.selectListByGroupId(configOptionGroup.getId()));
        } else {
            configOptionGroupVO.setConfigOptionDetailVOList(new ArrayList<>());
        }
        return configOptionGroupVO;
    }

    @Override
    public BaseVO addConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO) {
        if (StringUtils.isEmpty(saveConfigGroupDTO.getGroupKey()) || StringUtils.isEmpty(saveConfigGroupDTO.getGroupName()) || null != saveConfigGroupDTO.getId()) {
            return ParamErrorVO.getInstance();
        }
        // 判断名字是否唯一
        if (!ConfigOptionConstruct.isUniqueGroup(null, saveConfigGroupDTO.getGroupKey())) {
            return new ErrorVO("配置组名字重复");
        }
        ConfigOptionGroup configOptionGroup = new ConfigOptionGroup();
        BeanUtils.copyProperties(saveConfigGroupDTO, configOptionGroup, "id");
        // 设置基本属性
        configOptionGroup.setGmtCreate(Calendar.getInstance().getTime());
        configOptionGroup.setGmtModified(Calendar.getInstance().getTime());
        configOptionGroup.setIsDeleted(0);
        configOptionGroupMapper.insert(configOptionGroup);
        // 更新内存中配置组
        ConfigOptionConstruct.updateGroup();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO deleteById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        ConfigOptionGroup configOptionGroup = configOptionGroupMapper.selectById(id);
        if (null == configOptionGroup || 1 == configOptionGroup.getIsDeleted()) {
            return new ErrorVO("该配置组不存在");
        }
        if (configOptionDetailService.isUseGroup(id)) {
            return new ErrorVO("该配置组正在使用，请先删除其配置选项");
        }
        // 通过校验
        // 修改Modified时间
        configOptionGroup.setGmtModified(Calendar.getInstance().getTime());
        configOptionGroup.setIsDeleted(1);
        configOptionGroupMapper.updateById(configOptionGroup);
        // 更新内存中配置组
        ConfigOptionConstruct.updateGroup();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO) {
        if (StringUtils.isEmpty(saveConfigGroupDTO.getGroupKey()) || StringUtils.isEmpty(saveConfigGroupDTO.getGroupName()) || null == saveConfigGroupDTO.getId()) {
            return ParamErrorVO.getInstance();
        }
        // 判断名字是否唯一
        if (!ConfigOptionConstruct.isUniqueGroup(saveConfigGroupDTO.getId(), saveConfigGroupDTO.getGroupKey())) {
            return new ErrorVO("配置组名字重复");
        }
        ConfigOptionGroup configOptionGroup = new ConfigOptionGroup();
        BeanUtils.copyProperties(saveConfigGroupDTO, configOptionGroup);
        configOptionGroupMapper.updateById(configOptionGroup);
        // 更新内存中配置组
        ConfigOptionConstruct.updateGroup();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO getConfigGroupList(SearchConfigGroupDTO searchConfigGroupDTO) {
        if (!searchConfigGroupDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<ConfigOptionGroup> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("is_deleted={0}", 0);
        if (!StringUtils.isEmpty(searchConfigGroupDTO.getGroupKey())) {
            entityWrapper.like("group_key", searchConfigGroupDTO.getGroupKey());
        }
        if (!StringUtils.isEmpty(searchConfigGroupDTO.getGroupName())) {
            entityWrapper.like("group_name", searchConfigGroupDTO.getGroupName());
        }
        int total = configOptionGroupMapper.selectCount(entityWrapper);
        Page page = new Page(searchConfigGroupDTO.getPage(), searchConfigGroupDTO.getRows());
        if (0 != total) {
            List<ConfigOptionGroup> configOptionGroupList = configOptionGroupMapper.selectList(entityWrapper);
            if (null != configOptionGroupList && 0 != configOptionGroupList.size()) {
                List<SimpleConfigGroupVO> simpleConfigGroupVOList = configOptionGroupList.stream().map(this::transferToSimpleConfigGroupVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleConfigGroupVOList);
            }
        }
        return new ListVO<SimpleConfigGroupVO>(new ArrayList<>());

    }

    @Override
    public BaseVO getDetailById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        KeyAndValueVO keyAndValueVO = ConfigOptionConstruct.getGroupById(id);
        if (null == keyAndValueVO) {
            return new ErrorVO("该配置组不存在");
        }
        return new DetailResultVO(keyAndValueVO);
    }

    @Override
    public BaseVO getConfigOptionList() {
        List<ConfigOptionGroup> configOptionGroupList = configOptionGroupMapper.selectList(new EntityWrapper<>());
        List<ConfigOptionGroupVO> configOptionGroupVOList = configOptionGroupList.stream().map(this::transferToVConfigOptionGroupVO).collect(Collectors.toList());
        return new ListVO<>(configOptionGroupVOList);
    }
}
