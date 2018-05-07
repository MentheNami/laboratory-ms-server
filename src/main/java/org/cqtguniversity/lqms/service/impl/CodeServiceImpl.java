package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.Code;
import org.cqtguniversity.lqms.mapper.CodeMapper;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.SimpleObjectVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.service.CodeService;
import org.cqtguniversity.lqms.util.CellPhoneUtil;
import org.springframework.stereotype.Service;

import java.util.Calendar;

/**
 * <p>
 * 验证码表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-05-07
 */
@Service
public class CodeServiceImpl extends ServiceImpl<CodeMapper, Code> implements CodeService {

    private final CodeMapper codeMapper;

    public CodeServiceImpl(CodeMapper codeMapper) {
        this.codeMapper = codeMapper;
    }

    @Override
    public BaseVO getCode(String cellPhone) {
        if (null == cellPhone) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Code> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("cell_phone", cellPhone);
        int total = codeMapper.selectCount(entityWrapper);
        if (2 < total) {
            return new ErrorVO("验证码已发送，请检查手机");
        }
        String codeString = CellPhoneUtil.getVerificationCode(cellPhone);
        Code code = new Code();
        Calendar calendar = Calendar.getInstance();
        code.setGmtCreate(calendar.getTime());
        code.setGmtModified(calendar.getTime());
        code.setCellPhone(cellPhone);
        code.setCode(codeString);
        code.insert();
        return new SimpleObjectVO(codeString);
    }
}
