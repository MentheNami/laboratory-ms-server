package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.entity.File;
import org.cqtguniversity.lqms.mapper.FileMapper;
import org.cqtguniversity.lqms.service.FileService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 文件表 服务实现类
 * </p>
 *
 * @author TangShengYu
 * @since 2018-04-30
 */
@Service
public class FileServiceImpl extends ServiceImpl<FileMapper, File> implements FileService {
	
}
