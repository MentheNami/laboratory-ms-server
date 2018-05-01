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
 * @author Tangshengyu
 * @create 2018- 03- 30- 13:40
 */

@Component
public class ConfigOptionConstruct {

    private static Map<Long, KeyAndValueVO> OPTION_MAP;

    private static Map<Long, KeyAndValueVO> GROUP_MAP;

    private static Map<Long, List<ConfigOptionDetailVO>> GROUP_OPTIONS_MAP;

    private static Map<Long, ConfigOptionDetailVO> OPTION_VO_MAP;

    private static ConfigOptionGroupService configOptionGroupService;

    private static ConfigOptionDetailService configOptionDetailService;


    public ConfigOptionConstruct(ConfigOptionGroupService configOptionGroupService, ConfigOptionDetailService configOptionDetailService) {
        ConfigOptionConstruct.configOptionGroupService = configOptionGroupService;
        ConfigOptionConstruct.configOptionDetailService = configOptionDetailService;
        if (null == OPTION_MAP || null == GROUP_MAP || null== GROUP_OPTIONS_MAP || null == OPTION_VO_MAP) {
            updateGroup();
            updateOption();
        }
    }

    public static void updateGroup() {
        try {
            List<ConfigOptionGroup> configOptionGroupList = configOptionGroupService.selectList(new EntityWrapper<>());
            if (null != configOptionGroupList) {
                GROUP_MAP = new HashMap<>();
                for (ConfigOptionGroup configOptionGroup : configOptionGroupList) {
                    GROUP_MAP.put(configOptionGroup.getId(), new KeyAndValueVO(configOptionGroup.getGroupKey(), configOptionGroup.getGroupName()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍");
        }
    }

    public static void updateOption() {
        try {
            List<ConfigOptionDetailVO> configOptionDetailVOList = configOptionDetailService.selectList();
            if (null != configOptionDetailVOList) {
                OPTION_MAP = new HashMap<>();
                OPTION_VO_MAP = new HashMap<>();
                GROUP_OPTIONS_MAP = new HashMap<>();
                for (ConfigOptionDetailVO configOptionDetailVO : configOptionDetailVOList) {
                    // 通过选项组  获取对应的选项列表
                    List<ConfigOptionDetailVO> tempConfigOptionDetailVOList = GROUP_OPTIONS_MAP.get(configOptionDetailVO.getGroupId());
                    // 如果不存在该组
                    if (null == tempConfigOptionDetailVOList) {
                        tempConfigOptionDetailVOList = new ArrayList<>();
                    }
                    // 将
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
            System.out.println("请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍请重启一遍");
        }
    }

    public static KeyAndValueVO getGroupById(Long id) {
        return GROUP_MAP.get(id);
    }

    public static KeyAndValueVO getOptionById(Long id) {
        return OPTION_MAP.get(id);
    }

    public static ConfigOptionDetailVO getOptionVOById(Long id) {
        return OPTION_VO_MAP.get(id);
    }

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

    public static String transferRoomSHStatus(Integer status) {
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
