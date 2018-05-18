package org.cqtguniversity.lqms.service;

import org.cqtguniversity.lqms.entity.Code;
import com.baomidou.mybatisplus.service.IService;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * 验证码表 服务类
 * @author TangShengYu
 * @since 2018-05-07
 */
public interface CodeService extends IService<Code> {

    BaseVO getCode(String cellPhone);

    boolean useCode(String cellPhone, String code);

}
