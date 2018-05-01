package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.ConfigOptionDetail;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.config.SaveConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.dto.config.SearchConfigOptionDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.config.ConfigOptionDetailVO;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 配置选项详情 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface ConfigOptionDetailService extends IService<ConfigOptionDetail> {

    List<ConfigOptionDetailVO> selectListByGroupId(Long groupId);

    List<ConfigOptionDetailVO> selectList();

    BaseVO selectById(Long id);

    BaseVO selectConfigOptionList(SearchConfigOptionDTO searchConfigOptionDTO);

    // 根据配置组Id获取配置选项
    BaseVO selectByGroupId(Long groupId);

    BaseVO updateOptionDetail(Integer id, String optionName, String optionValue);

    BaseVO addOptionDetail(SaveConfigOptionDTO configOptionDetail);

    // 逻辑删除
    BaseVO deleteOptionDetail(Integer id);

    // 配置组是否正在使用
    boolean isUseGroup(Long groupId);

    // 增加一个配置选项的一次使用
    void addUseCount(Long id);

    // 增加多个配置选项的一次使用
    void addUseCount(Map<Long, Long> optionIdsMap);

    // 减少一个配置选项的一次使用
    void removeUseCount(Long id);

    // 减少多个配置选项的一次使用
    void removeUseCount(Map<Long, Long> optionIdsMap);
}
