package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.Province;
import org.cqtguniversity.lqms.mapper.ProvinceMapper;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.province.SimpleProvinceVO;
import org.cqtguniversity.lqms.service.ProvinceService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 省份 服务实现类
 * @author TangShengYu
 * @since 2018-05-13
 */
@Service
public class ProvinceServiceImpl extends ServiceImpl<ProvinceMapper, Province> implements ProvinceService {

    private final ProvinceMapper provinceMapper;

    public ProvinceServiceImpl(ProvinceMapper provinceMapper) {
        this.provinceMapper = provinceMapper;
    }

    private SimpleProvinceVO transferSimpleProvinceVO(Province province) {
        SimpleProvinceVO simpleProvinceVO = new SimpleProvinceVO();
        simpleProvinceVO.setId(province.getId());
        simpleProvinceVO.setProvinceName(province.getProvinceName());
        return simpleProvinceVO;
    }

    @Override
    public BaseVO getProvinceList() {
        List<Province> provinceList = provinceMapper.selectList(null);
        List<SimpleProvinceVO> simpleProvinceVOList = provinceList.stream().map(this::transferSimpleProvinceVO).collect(Collectors.toList());
        return new ListVO<>(simpleProvinceVOList);
    }
}
