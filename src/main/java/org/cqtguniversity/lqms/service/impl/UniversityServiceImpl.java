package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.University;
import org.cqtguniversity.lqms.mapper.UniversityMapper;
import org.cqtguniversity.lqms.pojo.dto.university.UniversityDTO;
import org.cqtguniversity.lqms.service.UniversityService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

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
}
