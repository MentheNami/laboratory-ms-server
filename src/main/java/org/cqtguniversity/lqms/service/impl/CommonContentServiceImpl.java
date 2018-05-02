package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.CommonContent;
import org.cqtguniversity.lqms.mapper.CommonContentMapper;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SearchCommonContenDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.CommonContentService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 长文本表 服务实现类
 * </p>
 *
 * @author Wang26211
 * @since 2018-04-30
 */
@Service
public class CommonContentServiceImpl extends ServiceImpl<CommonContentMapper, CommonContent> implements CommonContentService {
    private  final CommonContentMapper commonContentMapper;

    public CommonContentServiceImpl(CommonContentMapper commonContentMapper) {
        this.commonContentMapper = commonContentMapper;
    }

    @Override
    public BaseVO addCommonContent(SaveCommonContentDTO saveCommonContentDTO) {
        //合理性判断
        return null;
    }

    @Override
    public BaseVO removeById(Long id) {
        return null;
    }

    @Override
    public BaseVO updateCommonContent(SaveCommonContentDTO saveCommonContentDTO) {
        return null;
    }

    @Override
    public BaseVO selectById(Long id) {
        return null;
    }

    @Override
    public BaseVO getCommonContent(SearchCommonContenDTO searchCommonContenDTO) {
        return null;
    }

    @Override
    public BaseVO getCommonContentList(SaveCommonContentDTO saveCommonContentDTO) {
        return null;
    }
}
