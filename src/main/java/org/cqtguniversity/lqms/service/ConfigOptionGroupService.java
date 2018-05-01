package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.ConfigOptionGroup;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SaveConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.dto.configgroup.SearchConfigGroupDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * <p>
 * 配置选项组 服务类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
public interface ConfigOptionGroupService extends IService<ConfigOptionGroup> {

    BaseVO addConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO);

    BaseVO deleteById(Long id);

    BaseVO updateConfigGroup(SaveConfigGroupDTO saveConfigGroupDTO);

    BaseVO getConfigGroupList(SearchConfigGroupDTO searchConfigGroupDTO);

    BaseVO getDetailById(Long id);

    BaseVO getConfigOptionList();
}
