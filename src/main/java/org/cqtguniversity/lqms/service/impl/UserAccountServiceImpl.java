package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.entity.UserAccount;
import org.cqtguniversity.lqms.mapper.UserAccountMapper;
import org.cqtguniversity.lqms.pojo.dto.role.RoleDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SaveUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.useraccount.SearchUserAccountDTO;
import org.cqtguniversity.lqms.pojo.dto.userinfo.UserInfoDTO;
import org.cqtguniversity.lqms.pojo.dto.usernode.UserNodeDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.SessionUserVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.SimpleUserAccountVO;
import org.cqtguniversity.lqms.pojo.vo.useraccount.UserAccountVO;
import org.cqtguniversity.lqms.service.RoleService;
import org.cqtguniversity.lqms.service.UserAccountService;
import org.cqtguniversity.lqms.service.UserInfoService;
import org.cqtguniversity.lqms.service.UserNodeService;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MD5Util;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 用户账户表 服务实现类
 * @author Wang26211
 * @since 2018-05-01
 */
@Service
public class UserAccountServiceImpl extends ServiceImpl<UserAccountMapper, UserAccount> implements UserAccountService {

    // 注入用户账户服务
    @Autowired
    private UserAccountMapper userAccountMapper;

    // 注入用户信息服务
    @Autowired
    private UserInfoService userInfoService;

    // 注入用户角色服务
    @Autowired
    private RoleService roleService;

    // 注入用户节点服务
    @Autowired
    private UserNodeService userNodeService;

    /**
     * 将用户实体翻译成为对应的VO
     * @param userAccount
     * @return
     */
    private SimpleUserAccountVO transferSimpleUserAccountVO (UserAccount userAccount) {
        // 创建实验室VO
        SimpleUserAccountVO simpleUserAccountVO= new SimpleUserAccountVO();
        // 封装属性
        simpleUserAccountVO.setId(userAccount.getId());
        simpleUserAccountVO.setQuestion(userAccount.getQuestion());
        simpleUserAccountVO.setUserName(userAccount.getUserName());
        return  simpleUserAccountVO;
    }

    private boolean isUnique(String userName) {
        EntityWrapper<UserAccount> entityWrapper = new EntityWrapper<>();
        entityWrapper.where("user_name", userName);
        int total = userAccountMapper.selectCount(entityWrapper);
        return 0 == total;
    }

    @Override
    public BaseVO login(String userName, String password, HttpSession httpSession) {
        if (null == userName || null == password) {
            return ParamErrorVO.getInstance();
        }
        // 通过用户名得到账户信息
        UserAccount userAccount = userAccountMapper.selectByUserName(userName);
        if (null == userAccount) {
            return new ErrorVO("用户名不存在");
        }
        if (!userAccount.getUserPassword().equals(MD5Util.MD5(password))) {
            return new ErrorVO("密码错误");
        }
        // 用户名密码正确
        UserNodeDTO userNodeDTO = userNodeService.selectByUserAccountId(userAccount.getId());
        if (null == userNodeDTO) {
            return ErrorVO.getInternalError();
        }
        UserInfoDTO userInfoDTO = userInfoService.selectUserInfoDTO(userNodeDTO.getInfoId());
        if (null == userInfoDTO) {
            return ErrorVO.getInternalError();
        }
        RoleDTO roleDTO = roleService.selectRoleDTO(userNodeDTO.getRoleId());
        if (null == roleDTO) {
            return ErrorVO.getInternalError();
        }
        SessionUserVO sessionUserVO = new SessionUserVO();
        // 设置真实姓名
        sessionUserVO.setRealName(userInfoDTO.getRealName());
        // 设置用户姓名
        sessionUserVO.setUserName(userAccount.getUserName());
        // 设置角色
        sessionUserVO.setUserName(ConfigOptionConstruct.getOptionById(roleDTO.getRoleName()).getKey());
        httpSession.setAttribute("sessionUserVO", sessionUserVO);
        // Session设置基本信息
        return new DetailResultVO(sessionUserVO);
    }

    @Override
    public BaseVO addUserAccount(SaveUserAccountDTO saveUserAccountDTO) {
       //合理性判断
        if(null != saveUserAccountDTO.getId() || StringUtils.isEmpty(saveUserAccountDTO.getUserName())
        || StringUtils.isEmpty(saveUserAccountDTO.getUserPassword()) || StringUtils.isEmpty(saveUserAccountDTO.getCellPhone())){
         return ParamErrorVO.getInstance();
        }

        // 检验用户名是否唯一
        if (!isUnique(saveUserAccountDTO.getUserName())) {
            return new ErrorVO("用户名已存在");
        }

        // 获取一个用户节点记录

        //合理性通过
        UserAccount userAccount = new UserAccount();
        //复制基本信息，忽略id
        BeanUtils.copyProperties(saveUserAccountDTO, userAccount,"id");
        //设置生成时间
        userAccount.setGmtCreate(Calendar.getInstance().getTime());
        //设置修改时间
        userAccount.setGmtModified(Calendar.getInstance().getTime());
       //插入数据
        userAccountMapper.insert(userAccount);
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeByIds(Long[] Ids) {
        //合理性判断
        if(null == Ids){
            return ParamErrorVO.getInstance();
        }
        //合理性通过
        List<Long> tempIds = Arrays.asList(Ids);
        //通过Id删除用户账户,直接删除
        userAccountMapper.deleteBatchIds(tempIds);
        return SuccessVO.getInstance();

    }

    @Override
    public BaseVO updateUserAccount(SaveUserAccountDTO saveUserAccountDTO) {
       //合理性判断
        if (null == saveUserAccountDTO.getId()|| StringUtils.isEmpty(saveUserAccountDTO.getUserName())
                || StringUtils.isEmpty(saveUserAccountDTO.getUserPassword())){
            return ParamErrorVO.getInstance();
        }
        //合理性通过查询用户账户是否存在
         UserAccount userAccount = userAccountMapper.selectById(saveUserAccountDTO.getId());
        //如果用户账户为空或者用户标记为1
        if (null == userAccount || 1 == userAccount.getId()){
            return new ErrorVO("用户账户不存");
        }
        //复制基本信息
        BeanUtils.copyProperties(saveUserAccountDTO, userAccount,"gmtCreate","gmt_modified");
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        //合理性判断
        if(null == id){
            //返回前端逻辑错误
            return ParamErrorVO.getInstance();
        }
        //判断用户账户是否存
        UserAccount userAccount = userAccountMapper.selectById(id);
        if(userAccount == null ){
            return new ErrorVO("用户投诉不存在");
        }
        UserAccountVO userAccountVO = new UserAccountVO();
        //复制基本信息除了创建时间、修改时间
        BeanUtils.copyProperties(userAccount, userAccountVO, "gmtCreate", "gmt_modified");
        return new DetailResultVO(userAccountVO);
    }

    @Override
    public BaseVO getUserAccountList(SearchUserAccountDTO searchUserAccountDTO) {
        //合理性判断
        if (!searchUserAccountDTO.isLegitimate()){
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<UserAccount> entityWrapper = new EntityWrapper<>();
        //增加模糊查询
        if (!StringUtils.isEmpty(searchUserAccountDTO.getQuestion())){
             entityWrapper.like("question",searchUserAccountDTO.getQuestion());
        }
        if(!StringUtils.isEmpty(searchUserAccountDTO.getUserName())){
            entityWrapper.like("user_name",searchUserAccountDTO.getUserName());
        }
        int total = userAccountMapper.selectCount(entityWrapper);
        if (0 != total){
            Page page = new Page(searchUserAccountDTO.getPage(),searchUserAccountDTO.getRows());
            List<UserAccount> userAccountList = userAccountMapper.selectPage(page, entityWrapper);
            if (null != userAccountList && 0 != userAccountList.size()){
                //通过Java8 Stream流语法糖 将用户实体集合翻译为VO集合
                List<SimpleUserAccountVO> simpleUserInfoVOList=userAccountList.stream().map(this::transferSimpleUserAccountVO).collect(Collectors.toList());
                return new ListVO<>(simpleUserInfoVOList);
            }
        }
        return new ListVO<>(new ArrayList<>());
    }
}
