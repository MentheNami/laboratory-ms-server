package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.UserInfo;
import org.cqtguniversity.lqms.mapper.UserInfoMapper;
import org.cqtguniversity.lqms.pojo.dto.SessionDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SaveUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.SearchUserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.SimpleUserInfoVO;
import org.cqtguniversity.lqms.pojo.vo.userinfo.UserInfoVO;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 用户表 服务实现类
 * @author Wang26211
 * @since 2018-05-01
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {
    //引用用户服务
    private final  UserInfoMapper userInfoMapper;

    @Autowired
    private UserNodeService userNodeService;

    @Autowired
    public UserInfoServiceImpl(UserInfoMapper userInfoMapper) {
        this.userInfoMapper = userInfoMapper;
    }
    /**
     * 将用户实体翻译成为对应的VO
     * @param userInfo
     * @return
     */
    private SimpleUserInfoVO transferSimpleUserInfoVO (UserInfo userInfo) {
        // 创建实验室VO
        SimpleUserInfoVO simpleUserInfoVO= new SimpleUserInfoVO();
        // 封装属性
        simpleUserInfoVO.setId(userInfo.getId());
        simpleUserInfoVO.setCellPhone(userInfo.getCellPhone());
        simpleUserInfoVO.setEmail(userInfo.getEmail());
        simpleUserInfoVO.setRealName(userInfo.getRealName() );
        return  simpleUserInfoVO;
    }

    @Override
    public Long getUserInfo(String cellPhone) {
        // 断言传入的cellPhone必须不为空
        Assert.notNull(cellPhone, "cellPhone must is not null");
        UserInfo userInfo = new UserInfo();
        userInfo.setCellPhone(cellPhone);
        Calendar calendar = Calendar.getInstance();
        userInfo.setGmtCreate(calendar.getTime());
        userInfo.setGmtModified(calendar.getTime());
        userInfo.setIsDeleted(0);
        userInfoMapper.insert(userInfo);
        return userInfo.getId();
    }

    @Override
    public UserInfoDTO selectUserInfoDTO(Long id) {
        Assert.notNull(id, "id must is not null");
        UserInfo userInfo = userInfoMapper.selectById(id);
        if (null == userInfo) {
            System.out.println("存在错误的用户信息id：" + id + ", 请检查用户信息表");
            return null;
        }
        UserInfoDTO userInfoDTO = new UserInfoDTO();
        BeanUtils.copyProperties(userInfo, userInfoDTO);
        return userInfoDTO;
    }

    @Override
    public List<Long> selectIdsByRealName(String realName) {
        EntityWrapper<UserInfo> entityWrapper = new EntityWrapper<>();
        entityWrapper.like("real_name", realName);
        // 模糊查询所有用户
        List<UserInfo> userInfoList = userInfoMapper.selectList(entityWrapper);
        if (null == userInfoList || 0 == userInfoList.size()) {
            // 模糊查询到没有记录，返回空，告诉调用此接口者，没有数据
            return null;
        }
        // 返回所有用户Id
        return userInfoList.stream().map(UserInfo::getId).collect(Collectors.toList());
    }

    @Override
    public UserInfoVO selectByUserName(String userName) {

        return null;
    }

    @Override
    public BaseVO addUserInfo(SaveUserInfoDTO saveUserInfoDTO) {
        //合理性判断
        if (null != saveUserInfoDTO.getId() || StringUtils.isEmpty(saveUserInfoDTO.getRealName())
                || StringUtils.isEmpty(saveUserInfoDTO.getCellPhone())
                ||StringUtils.isEmpty(saveUserInfoDTO.getEmail())){
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        UserInfo userInfo = new UserInfo();
        //复制基本信息
        BeanUtils.copyProperties(saveUserInfoDTO,userInfo,"id");
        //设置创建时间
        userInfo.setGmtCreate(Calendar.getInstance().getTime());
        //设置修改时间
        userInfo.setGmtModified(Calendar.getInstance().getTime());
        //逻辑删除
        userInfo.setIsDeleted(0);
        //插入数据
        userInfoMapper.insert(userInfo);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeByIds(Long[] ids) {
        //判断合理性
        if(null == ids){
         return ParamErrorVO.getInstance();
        }
        //判断用户是否存在
        UserInfo userInfo = userInfoMapper.selectById(ids);
        if(userInfo == null || 1 == userInfo.getIsDeleted()){
            return new ErrorVO("用户不存在");
        }
        //合理性判断通过，设置删除时间
        userInfo.setGmtModified(Calendar.getInstance().getTime());
        //设置删除标记
        userInfo.setIsDeleted(1);
        //通过id删除用户
        userInfoMapper.updateById(userInfo);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO updateUserInfo(SaveUserInfoDTO saveUserInfoDTO) {
        //合理性判断
        if (null == saveUserInfoDTO.getId()|| StringUtils.isEmpty(saveUserInfoDTO.getRealName())
                || StringUtils.isEmpty(saveUserInfoDTO.getCellPhone())
                || StringUtils.isEmpty(saveUserInfoDTO.getEmail())){
            return ParamErrorVO.getInstance();
        }
        //查询用户是否存在
        UserInfo userInfo = userInfoMapper.selectById(saveUserInfoDTO.getId());
        if(null == userInfo || 1 == userInfo.getIsDeleted()){
            return new ErrorVO("用户不存");
        }
        //合理性通过,复制基本信息
        BeanUtils.copyProperties(saveUserInfoDTO,userInfo);
        //创建当前修改时间
        userInfo.setGmtModified(Calendar.getInstance().getTime());
        //插入数据
        userInfoMapper.updateById(userInfo);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        //合理性判断
        if(null == id){
            return ParamErrorVO.getInstance();
        }
        //判断用户是否存在
        UserInfo userInfo = userInfoMapper.selectById(id);
        if (null == userInfo || 1 == userInfo.getIsDeleted()){
            return new ErrorVO("用户不存在");
        }
        //复制基本信息
        UserInfoVO userInfoVO = new UserInfoVO();
        BeanUtils.copyProperties(userInfoMapper,userInfo,"gmtCreate","gmt_modified");
        return new DetailResultVO(userInfoVO);
    }

    @Override
    public BaseVO getSelfInfo(HttpSession httpSession) {
        SessionDTO sessionDTO = (SessionDTO) httpSession.getAttribute("sessionDTO");
        if (null == sessionDTO) {
            return new ErrorVO("用户未登陆");
        }
        return new DetailResultVO(getSimpleUserInfoVO(sessionDTO.getUserInfoDTO().getId()));
    }

    @Override
    public SimpleUserInfoVO getSimpleUserInfoVO(Long id) {
        UserInfo userInfo = userInfoMapper.selectById(id);
        SimpleUserInfoVO simpleUserInfoVO = new SimpleUserInfoVO();
        BeanUtils.copyProperties(userInfo, simpleUserInfoVO);
        return simpleUserInfoVO;
    }

    @Override
    public BaseVO getUserInfoList(SearchUserInfoDTO searchUserInfoDTO) {
        //合理性判断
        if (!searchUserInfoDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<UserInfo> entityWrapper = new EntityWrapper<>();
        // 携带用户角色查询
        if (null != searchUserInfoDTO.getRoleId()) {
            List<UserNodeDTO> userNodeDTOList = userNodeService.getUserNodeDTOListByRoleId(searchUserInfoDTO.getRoleId());
            if (null != userNodeDTOList && 0 != userNodeDTOList.size()) {
                // 该角色下存在用户
                List<Long> userInfoIdList = userNodeDTOList.stream().map(UserNodeDTO::getInfoId).collect(Collectors.toList());
                entityWrapper.in("id", userInfoIdList);
            } else {
                // 该角色下不存在用户
                return new ListVO<>(new ArrayList<>());
            }
        }
        entityWrapper.where("is_deleted={0}",0);
        //增加模糊查询
        if(!StringUtils.isEmpty(searchUserInfoDTO.getCellPhone())){
            entityWrapper.like("cell_phone",searchUserInfoDTO.getCellPhone());
        }
        if (!StringUtils.isEmpty(searchUserInfoDTO.getRealName())){
            entityWrapper.like("real_name",searchUserInfoDTO.getRealName());
        }
        if (!StringUtils.isEmpty(searchUserInfoDTO.getEmail())){
            entityWrapper.like("email",searchUserInfoDTO.getEmail());
        }
        //查询总条数
        int total = userInfoMapper.selectCount(entityWrapper);
        if (0 != total){
            Page page = new Page(searchUserInfoDTO.getPage(),searchUserInfoDTO.getRows());
            List<UserInfo> userInfoList = userInfoMapper.selectPage(page, entityWrapper);
            if (null != userInfoList && 0 != userInfoList.size()){
                //通过Java8 Stream流语法糖 将用户实体集合翻译为VO集合
                List<SimpleUserInfoVO>simpleUserInfoVOList=userInfoList.stream().map(this::transferSimpleUserInfoVO).collect(Collectors.toList());
                return new ListVO<>(simpleUserInfoVOList);
            }
        }
        return new ListVO<>(new ArrayList<>());
    }
}
