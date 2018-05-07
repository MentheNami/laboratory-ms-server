package org.cqtguniversity.lqms.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.cqtguniversity.lqms.construct.NumTypeConstruct;
import org.cqtguniversity.lqms.entity.Device;
import org.cqtguniversity.lqms.mapper.DeviceMapper;
import org.cqtguniversity.lqms.pojo.dto.divece.SaveDeviceDTO;
import org.cqtguniversity.lqms.pojo.dto.divece.SearchDeviceDTO;
import org.cqtguniversity.lqms.pojo.dto.laboratory.LaboratoryDTO;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;
import org.cqtguniversity.lqms.pojo.vo.DetailResultVO;
import org.cqtguniversity.lqms.pojo.vo.ListVO;
import org.cqtguniversity.lqms.pojo.vo.device.DeviceVO;
import org.cqtguniversity.lqms.pojo.vo.device.SimpleDeviceVO;
import org.cqtguniversity.lqms.pojo.vo.result.ErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.ParamErrorVO;
import org.cqtguniversity.lqms.pojo.vo.result.SuccessVO;
import org.cqtguniversity.lqms.service.ConfigOptionDetailService;
import org.cqtguniversity.lqms.service.DeviceService;
import org.cqtguniversity.lqms.service.LaboratoryService;
import org.cqtguniversity.lqms.service.NumberRuleService;
import org.cqtguniversity.lqms.util.ConfigOptionConstruct;
import org.cqtguniversity.lqms.util.MyDateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 设备表 服务实现类
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class DeviceServiceImpl extends ServiceImpl<DeviceMapper, Device> implements DeviceService {

    // 引入设备服务
    private final DeviceMapper deviceMapper;
    // 引入编号规则服务
    private final NumberRuleService numberRuleService;
    // 引入配置选项服务
    private final ConfigOptionDetailService configOptionDetailService;

    @Autowired
    private LaboratoryService laboratoryService;

    // 注入相关服务
    @Autowired
    public DeviceServiceImpl(DeviceMapper deviceMapper, NumberRuleService numberRuleService, ConfigOptionDetailService configOptionDetailService) {
        this.deviceMapper = deviceMapper;
        this.numberRuleService = numberRuleService;
        this.configOptionDetailService = configOptionDetailService;
    }

    private Device getDevice(Long id) {
        Assert.notNull(id, "id must is not null");
        return deviceMapper.selectById(id);
    }

    private SimpleDeviceVO transferSimpleDeviceVO(Device device) {
        SimpleDeviceVO simpleDeviceVO = new SimpleDeviceVO();
        simpleDeviceVO.setId(device.getId());
        simpleDeviceVO.setDeviceName(device.getDeviceName());
        simpleDeviceVO.setDeviceNo(device.getDeviceNo());
        simpleDeviceVO.setDeviceStatus(ConfigOptionConstruct.getOptionById(device.getDeviceStatus()).getKey());
        simpleDeviceVO.setDeviceType(ConfigOptionConstruct.getOptionById(device.getDeviceType()).getKey());
        simpleDeviceVO.setGmtCreate(MyDateUtil.simpleDateFormat(device.getGmtCreate(), MyDateUtil.YYYY_MM_DD_C));
        simpleDeviceVO.setIsOnline(device.getIsOnline() == 1? "在线" : "离线");
        simpleDeviceVO.setLaboratory(laboratoryService.selectLaboratoryDTO(device.getLaboratory()).getLaboratoryName());
        return simpleDeviceVO;
    }

    @Override
    public BaseVO addDevice(SaveDeviceDTO saveDeviceDTO) {
        // 合理性判断
        if (null != saveDeviceDTO.getId() || null == saveDeviceDTO.getDeviceType()
                || StringUtils.isEmpty(saveDeviceDTO.getDeviceName()) || null == saveDeviceDTO.getLaboratory()) {
            return ParamErrorVO.getInstance();
        }
        // 创建实体
        Device device = new Device();
        // 复制基本信息
        BeanUtils.copyProperties(saveDeviceDTO, device, "id");
        Calendar calendar = Calendar.getInstance();
        // 设置创建时间
        device.setGmtCreate(calendar.getTime());
        // 设置修改时间
        device.setGmtModified(calendar.getTime());
        // 获取一个自动生成的设备编号
        String deviceNo = numberRuleService.getNum(NumTypeConstruct.DEVICENO);
        // 设置设备编号
        device.setDeviceNo(deviceNo);
        // 13代表使用
        device.setDeviceStatus((long) 13);
        device.setIsOnline(0);
        device.setIsDeleted(0);
        deviceMapper.insert(device);
        // 更新配置选项的使用：设备类型，设备状态
        configOptionDetailService.addUseCount(device.getDeviceType());
        configOptionDetailService.addUseCount(device.getDeviceStatus());
        // 更新内存配置
        ConfigOptionConstruct.updateOption();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO removeByIds(Long[] ids) {
        // 合理性判断
        if (null == ids) {
            return ParamErrorVO.getInstance();
        } else {
            List<Long> idList = new ArrayList<>();
            // 将数组ids转换为集合
            idList.addAll(Arrays.asList(ids));
            // 查询需要删除的设备
            List<Device> deviceList = deviceMapper.selectBatchIds(idList);
            // 判断这些IDS对应设备是否存在
            if (null == deviceList || 0 == deviceList.size() || deviceList.size() != idList.size()) {
                return new ErrorVO("存在错误的设备");
            }
            // 合理性通过，获取设备中的配置选项
            List<Long> optionIds = new ArrayList<>();
            // 获取设备类型的选项次数
            optionIds.addAll(deviceList.stream().map(Device::getDeviceType).collect(Collectors.toList()));
            // 获取设备设备状态的选项次数
            optionIds.addAll(deviceList.stream().map(Device::getDeviceStatus).collect(Collectors.toList()));
            // 转Map
            Map<Long, Long> optionIdsMap = optionIds.stream().collect(Collectors.groupingBy(p -> p,Collectors.counting()));
            // 设备可删除
            int count = deviceMapper.deleteBatchIds(idList);
            // 移除配置选项的使用
            configOptionDetailService.removeUseCount(optionIdsMap);
            // 更新内存配置
            ConfigOptionConstruct.updateOption();
            if (count == idList.size()) {
                return SuccessVO.getInstance();
            } else {
                return new ErrorVO("部分删除失败");
            }
        }
    }

    @Override
    public BaseVO updateDevice(SaveDeviceDTO saveDeviceDTO) {
        // 合理性判断
        if (null == saveDeviceDTO.getId() || null == saveDeviceDTO.getDeviceType()
                || StringUtils.isEmpty(saveDeviceDTO.getDeviceName()) || null == saveDeviceDTO.getLaboratory()) {
            return ParamErrorVO.getInstance();
        }
        Device device = deviceMapper.selectById(saveDeviceDTO.getId());
        if (null == device) {
            return new ErrorVO("设备信息不存在");
        }
        if (!device.getDeviceType().equals(saveDeviceDTO.getDeviceType())) {
            configOptionDetailService.addUseCount(saveDeviceDTO.getDeviceType());
            configOptionDetailService.removeUseCount(device.getDeviceType());
            // 更新内存配置选项
            ConfigOptionConstruct.updateOption();
            device.setDeviceType(saveDeviceDTO.getDeviceType());
        }
        device.setLaboratory(saveDeviceDTO.getLaboratory());
        device.setDeviceName(saveDeviceDTO.getDeviceName());
        device.setGmtModified(Calendar.getInstance().getTime());
        device.updateById();
        return SuccessVO.getInstance();
    }

    @Override
    public BaseVO selectById(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        DeviceVO deviceVO = new DeviceVO();
        Device device = deviceMapper.selectById(id);
        BeanUtils.copyProperties(device, deviceVO);
        return new DetailResultVO(deviceVO);
    }

    @Override
    public BaseVO selectDetail(Long id) {
        if (null == id) {
            return ParamErrorVO.getInstance();
        }
        Device device = getDevice(id);
        if (null == device) {
            return ErrorVO.getInternalError();
        }
        SimpleDeviceVO simpleDeviceVO = transferSimpleDeviceVO(device);
        return new DetailResultVO(simpleDeviceVO);
    }

    @Override
    public BaseVO getDeviceList(SearchDeviceDTO searchDeviceDTO) {
        // 合理性判断
        if (!searchDeviceDTO.isLegitimate()) {
            return ParamErrorVO.getInstance();
        }
        EntityWrapper<Device> entityWrapper = new EntityWrapper<>();
        if (null != searchDeviceDTO.getLaboratory()) {
            LaboratoryDTO laboratoryDTO = laboratoryService.selectLaboratoryDTO(searchDeviceDTO.getLaboratory());
            if (null == laboratoryDTO) {
                return ErrorVO.getInternalError();
            }
            entityWrapper.where("laboratory={0}", laboratoryDTO.getId().toString());
        }
        if (!StringUtils.isEmpty(searchDeviceDTO.getDeviceName())) {
            entityWrapper.like("device_name", searchDeviceDTO.getDeviceName());
        }
        if (null != searchDeviceDTO.getDeviceStatus()) {
            entityWrapper.where("device_status={0}", searchDeviceDTO.getDeviceStatus().toString());
        }
        if (null != searchDeviceDTO.getDeviceType()) {
            entityWrapper.where("device_type={0}", searchDeviceDTO.getDeviceType().toString());
        }
        if (null != searchDeviceDTO.getIsOnline()) {
            entityWrapper.where("is_online={0}", searchDeviceDTO.getIsOnline());
        }
        int total = deviceMapper.selectCount(entityWrapper);
        Page page = new Page(searchDeviceDTO.getPage(), searchDeviceDTO.getRows());
        if (0 != total) {
            entityWrapper.groupBy("is_online").orderBy("gmt_modified");
            List<Device> deviceList = deviceMapper.selectPage(page, entityWrapper);
            if (null != deviceList && 0 != deviceList.size()) {
                List<SimpleDeviceVO> simpleDeviceVOList = deviceList.stream().map(this::transferSimpleDeviceVO).collect(Collectors.toList());
                return new ListVO<>(total, page, simpleDeviceVOList);
            }
        }
        return new ListVO<>(0 , page, new ArrayList<>());
    }
}
