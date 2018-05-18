package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Province;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 *  服务类
 * @author TangShengYu
 * @since 2018-05-13
 */
public interface ProvinceService extends IService<Province> {

    BaseVO getProvinceList();

}
