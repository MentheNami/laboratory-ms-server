package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.CommonContent;
import org.cqtguniversity.lqms.mapper.CommonContentMapper;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.CommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
import org.cqtguniversity.lqms.pojo.dto.commoncontent.SearchCommonContenDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.service.CommonContentService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

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

    private CommonContent selectCommonContent(Long id) {
        Assert.notNull(id, "id must is not null");
        return commonContentMapper.selectById(id);
    }

    @Override
    public CommonContentDTO getByContent(String content) {
        // 合理性断言
        Assert.notNull(content, "content must is not null");
        // 创建长文本实体
        CommonContent commonContent = new CommonContent();
        commonContent.setContent(content);
        Calendar calendar = Calendar.getInstance();
        commonContent.setGmtCreate(calendar.getTime());
        commonContent.setGmtCreate(calendar.getTime());
        commonContent.insert();
        CommonContentDTO commonContentDTO = new CommonContentDTO();
        BeanUtils.copyProperties(commonContent, commonContentDTO);
        return commonContentDTO;
    }

    @Override
    public CommonContentDTO selectCommonContentDTO(Long id) {
        CommonContent commonContent = selectCommonContent(id);
        if (null == commonContent) {
            return null;
        }
        CommonContentDTO commonContentDTO = new CommonContentDTO();
        BeanUtils.copyProperties(commonContent, commonContentDTO);
        return commonContentDTO;
    }

    @Override
    public List<Long> selectIdsByContent(String content) {
        EntityWrapper<CommonContent> entityWrapper = new EntityWrapper<>();
        entityWrapper.like("content", content);
        List<CommonContent> commonContentList = commonContentMapper.selectList(entityWrapper);
        if (null == commonContentList || 0 == commonContentList.size()) {
            return null;
        }
        return commonContentList.stream().map(CommonContent::getId).collect(Collectors.toList());
    }

    @Override
    public BaseVO removeById(Long id) {
        return null;
    }

    @Override
    public void updateCommonContent(Long id, String content) {
        CommonContent commonContent = selectCommonContent(id);
        commonContent.setGmtModified(Calendar.getInstance().getTime());
        commonContent.setContent(content);
        commonContent.insert();
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
