package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.cqtguniversity.lqms.entity.University;
import org.cqtguniversity.lqms.mapper.UniversityMapper;
import org.cqtguniversity.lqms.pojo.dto.university.UniversityDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.university.SimpleUniversityVO;
import org.cqtguniversity.lqms.service.UniversityService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-13
 */
@Service
public class UniversityServiceImpl extends ServiceImpl<UniversityMapper, University> implements UniversityService {

    private final UniversityMapper universityMapper;

    public UniversityServiceImpl(UniversityMapper universityMapper) {
        this.universityMapper = universityMapper;
    }

    private University getUniversity(Long id) {
        return universityMapper.selectById(id);
    }

    private SimpleUniversityVO transferSimpleUniversityVO(University university) {
        SimpleUniversityVO simpleUniversityVO = new SimpleUniversityVO();
        simpleUniversityVO.setId(university.getId());
        simpleUniversityVO.setUniversityName(university.getUniversityName());
        return simpleUniversityVO;
    }

    @Override
    public UniversityDTO getUniversityDTO(Long id) {
        if (null == id) {
            return null;
        }
        UniversityDTO universityDTO = new UniversityDTO();
        University university = getUniversity(id);
        if (null == university) {
            return null;
        }
        BeanUtils.copyProperties(university, universityDTO);
        return universityDTO;
    }

    @Override
    public BaseVO getUniversityList(Long provinceId) {
        //合理性判断
        if(null == provinceId){
            return new ErrorVO("省份未选择");
        }
        //合理性通过
        EntityWrapper<University> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("province_id={0}", provinceId);
        List<University> universityList = universityMapper.selectList(entityWrapper);
        if (null == universityList) {
            return new ListVO<>(new ArrayList<>());
        }
        List<SimpleUniversityVO> simpleUniversityVOList = universityList.stream().map(this::transferSimpleUniversityVO).collect(Collectors.toList());
        return new ListVO<>(simpleUniversityVOList);
    }
}
