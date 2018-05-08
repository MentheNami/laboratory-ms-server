package org.cqtguniversity.lqms.service;

        import com.fasterxml.jackson.databind.ser.Serializers;
        import org.cqtguniversity.lqms.entity.CommonContent;
        import com.baomidou.mybatisplus.service.IService;
        import org.cqtguniversity.lqms.pojo.dto.commoncontent.CommonContentDTO;
        import org.cqtguniversity.lqms.pojo.dto.commoncontent.SaveCommonContentDTO;
        import org.cqtguniversity.lqms.pojo.dto.commoncontent.SearchCommonContenDTO;
        import org.cqtguniversity.lqms.pojo.dto.complaint.SaveComplaintDTO;
        import org.cqtguniversity.lqms.pojo.dto.complaint.SearchComplaintDTO;
        import org.cqtguniversity.lqms.pojo.vo.BaseVO;

        import java.util.List;

/**
 * <p>
 * 长文本表 服务类
 * </p>
 *
 * @author Wang26211
 * @since 2018-04-30
 */
public interface CommonContentService extends IService<CommonContent> {
    //增加长文本
    BaseVO addCommonContent(SaveCommonContentDTO saveCommonContentDTO );

    CommonContentDTO getByContent(String content);

    CommonContentDTO selectCommonContentDTO(Long id);

    List<Long> selectIdsByContent(String content);

    //删除长文本通过ID
    BaseVO removeById(Long id);
    //更新长文本
    void updateCommonContent(Long id, String content);
    //查询长文本详情
    BaseVO selectById(Long id);
    //查询长文本列表
    BaseVO getCommonContent(SearchCommonContenDTO searchCommonContenDTO);

    BaseVO getCommonContentList(SaveCommonContentDTO saveCommonContentDTO);
}
