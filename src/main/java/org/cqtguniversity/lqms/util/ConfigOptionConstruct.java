package org.cqtguniversity.lqms.util;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.ConfigOptionGroup;
import org.cqtguniversity.lqms.pojo.vo.config.ConfigOptionDetailVO;
import org.cqtguniversity.lqms.pojo.vo.config.KeyAndValueVO;
import org.cqtguniversity.lqms.service.ConfigOptionDetailService;
import org.cqtguniversity.lqms.service.ConfigOptionGroupService;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 配置选项设计类
 * @author Tangshengyu
 * @create 2018- 03- 30- 13:40
 */
// 依赖注入
@Component
public class ConfigOptionConstruct {

    // 配置选项ID - 配置选项KeyAndValueVO Map
    private static Map<Long, KeyAndValueVO> OPTION_MAP;
    // 配置组ID - 配置组KeyAndValueVO Map
    private static Map<Long, KeyAndValueVO> GROUP_MAP;
    // 配置组ID - 配置选项VO集合 Map
    private static Map<Long, List<ConfigOptionDetailVO>> GROUP_OPTIONS_MAP;
    // 配置选项ID - 配置选项Map
    private static Map<Long, ConfigOptionDetailVO> OPTION_VO_MAP;
    // 配置组服务
    private static ConfigOptionGroupService configOptionGroupService;
    // 配置选项服务
    private static ConfigOptionDetailService configOptionDetailService;

    // 构造方法注入静态相关服务
    public ConfigOptionConstruct(ConfigOptionGroupService configOptionGroupService, ConfigOptionDetailService configOptionDetailService) {
        ConfigOptionConstruct.configOptionGroupService = configOptionGroupService;
        ConfigOptionConstruct.configOptionDetailService = configOptionDetailService;
        // 注入时，如果存在Map为null, 更新内存配置组、配置选项
        if (null == OPTION_MAP || null == GROUP_MAP || null== GROUP_OPTIONS_MAP || null == OPTION_VO_MAP) {
            updateGroup();
            updateOption();
        }
    }

    /**
     * 更新配置组
     */
    public static void updateGroup() {
        try {
            // 查询所有配置组
            List<ConfigOptionGroup> configOptionGroupList = configOptionGroupService.selectList(new EntityWrapper<>());
            // 判断配置组集合是否有数据
            if (null != configOptionGroupList && 0 != configOptionGroupList.size()) {
                // 在有数据的情况下，初始化GROUP_MAP
                GROUP_MAP = new HashMap<>();
                // 设置GROUP_MAP
                for (ConfigOptionGroup configOptionGroup : configOptionGroupList) {
                    GROUP_MAP.put(configOptionGroup.getId(), new KeyAndValueVO(configOptionGroup.getGroupKey(), configOptionGroup.getGroupName()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("配置组初始化失败，请重新启动系统！");
        }
    }

    /**
     * 更新配置选项
     */
    public static void updateOption() {
        try {
            // 查询所有配置选项
            List<ConfigOptionDetailVO> configOptionDetailVOList = configOptionDetailService.selectList();
            // 判断配置选项集合是否有数据
            if (null != configOptionDetailVOList && 0 != configOptionDetailVOList.size()) {
                // 在有数据的情况下，初始化OPTION_MAP
                OPTION_MAP = new HashMap<>();
                // 初始化 OPTION_VO_MAP
                OPTION_VO_MAP = new HashMap<>();
                // 初始化 GROUP_OPTIONS_MAP
                GROUP_OPTIONS_MAP = new HashMap<>();
                // 设置 OPTION_VO_MAP、OPTION_VO_MAP、GROUP_OPTIONS_MAP
                for (ConfigOptionDetailVO configOptionDetailVO : configOptionDetailVOList) {
                    // 通过选项组  获取对应的选项列表
                    List<ConfigOptionDetailVO> tempConfigOptionDetailVOList = GROUP_OPTIONS_MAP.get(configOptionDetailVO.getGroupId());
                    // 如果不存在该组
                    if (null == tempConfigOptionDetailVOList) {
                        tempConfigOptionDetailVOList = new ArrayList<>();
                    }
                    // 将配置选项添加到集合中
                    tempConfigOptionDetailVOList.add(configOptionDetailVO);
                    // 设置<选项组ID， 该组选项列表>
                    GROUP_OPTIONS_MAP.put(configOptionDetailVO.getGroupId(), tempConfigOptionDetailVOList);
                    // 设置<选项ID， 选项KeyValue>
                    OPTION_MAP.put(configOptionDetailVO.getId(), new KeyAndValueVO(configOptionDetailVO.getOptionName(), configOptionDetailVO.getOptionValue()));
                    // 设置<选项ID,  选项VO>
                    OPTION_VO_MAP.put(configOptionDetailVO.getId(), configOptionDetailVO);
                }
            }
        } catch (Exception errorException) {
            errorException.printStackTrace();
            System.out.println("配置选项初始化失败，请重新启动系统！");
        }
    }

    /**
     * 通过 配置组ID 获取配置组 KeyAndValueVO
     * @param id 配置组ID
     * @return 配置组 KeyAndValueVO
     */
    public static KeyAndValueVO getGroupById(Long id) {
        return GROUP_MAP.get(id);
    }

    /**
     * 通过 配置选项ID 获取配置选项 KeyAndValueVO
     * @param id 配置选项ID
     * @return 配置选项 KeyAndValueVO
     */
    public static KeyAndValueVO getOptionById(Long id) {
        return OPTION_MAP.get(id);
    }

    /**
     * 通过 配置选项Value 获取配置选项ID
     * @param value 配置选项Value
     * @return 获取配置选项ID
     */
    public static Long getOptionIdByValue(String value) {
        // 循环 OPTION_MAP 查找配置选项Value 所属配置选项KeyAndValueVO
        for (Map.Entry<Long, KeyAndValueVO> entry: OPTION_MAP.entrySet()
        ){
            if (value.equals(entry.getValue().getValue())) {
                // 返回 配置选项ID
                return entry.getKey();
            }
        }
        // 如果未返回配置选项ID ， 提示错误
        System.out.println("通过Value获取配置选项错误，存在错误的Value");
        return null;
    }

    /**
     * 通过 配置选项ID 获取 ConfigOptionDetailVO
     * @param id 配置选项ID
     * @return ConfigOptionDetailVO
     */
    public static ConfigOptionDetailVO getOptionVOById(Long id) {
        return OPTION_VO_MAP.get(id);
    }

    /**
     * 配置组唯一性验证
     * @param id 配置组ID
     * @param groupKey 配置组键
     * @return true/false
     */
    public static boolean isUniqueGroup(Long id, String groupKey) {
        if (null == GROUP_MAP || 0 == GROUP_MAP.size()) {
            return true;
        }
        Map<Long, KeyAndValueVO> tempGroupMap = new HashMap<>();
        tempGroupMap.putAll(GROUP_MAP);
        if (id != null) {
            tempGroupMap.remove(id);
        }
        for (KeyAndValueVO keyAndValueVO: tempGroupMap.values()
             ) {
            if (groupKey.equals(keyAndValueVO.getKey())) {
                return false;
            }
        }
        return true;
    }

    /**
     * 配置项唯一性验证
     * @param groupId 所属组Id
     * @param optionName 配置项名称
     * @param optionValue 配置项值
     * @return true / false  唯一/不唯一
     */
    public static boolean isUniqueOption(Long groupId, String optionName, String optionValue) {
        List<ConfigOptionDetailVO> configOptionDetailVOList = GROUP_OPTIONS_MAP.get(groupId);
        if (null == configOptionDetailVOList) {
            return true;
        } else {
            for (ConfigOptionDetailVO configOptionDetailVO : configOptionDetailVOList) {
                if (groupId.equals(configOptionDetailVO.getGroupId())
                        && (optionName.equals(configOptionDetailVO.getOptionName()) || optionValue.equals(configOptionDetailVO.getOptionValue()))
                        ) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String transferStatus(Integer status) {
        switch (status) {
            case 0 :
                return "待审批";
            case 1 :
                return "同意";
            case 2 :
                return "驳回";
            case 3 :
                return "已过期";
            default:
                    return "";
        }
    }
}
