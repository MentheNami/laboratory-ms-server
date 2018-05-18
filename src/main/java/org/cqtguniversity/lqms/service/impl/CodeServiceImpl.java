package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.Code;
import org.cqtguniversity.lqms.mapper.CodeMapper;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.SimpleObjectVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.CodeService;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.util.CellPhoneUtil;
import org.cqtguniversity.lqms.util.RegularUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;

/**
 * 验证码表 服务实现类
 * @author TangShengYu
 * @since 2018-05-07
 */
@Service
public class CodeServiceImpl extends ServiceImpl<CodeMapper, Code> implements CodeService {

    private final CodeMapper codeMapper;

    @Autowired
    private UserInfoService userInfoService;

    public CodeServiceImpl(CodeMapper codeMapper) {
        this.codeMapper = codeMapper;
    }

    @Override
    public BaseVO getCode(String cellPhone) {
        if (null == cellPhone) {
            return ParamErrorVO.getInstance();
        }
        if (!RegularUtil.RegularCheck(RegularUtil.CELLPHONE, cellPhone)) {
            return new ErrorVO("手机格式错误");
        }
        if (!userInfoService.isUnique(cellPhone)) {
            return new ErrorVO("手机号已注册");
        }
        EntityWrapper<Code> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("cell_phone={0}", cellPhone);
        int total = codeMapper.selectCount(entityWrapper);
        if (0 < total) {
            return new ErrorVO("验证码已发送无需重复获取，请检查手机");
        }
        String codeString = CellPhoneUtil.getVerificationCode(cellPhone);
        Code code = new Code();
        Calendar calendar = Calendar.getInstance();
        code.setGmtCreate(calendar.getTime());
        code.setGmtModified(calendar.getTime());
        code.setCellPhone(cellPhone);
        code.setCode(codeString);
        code.insert();
        return new SuccessVO("验证码已发送至手机，请注意查收");
    }

    @Override
    public boolean useCode(String cellPhone, String useCode) {
        Code code = codeMapper.useCode(cellPhone, useCode);
        if (null == code) {
            return false;
        }
        code.deleteById();
        return true;
    }
}
