package org.cqtguniversity.lqms.pojo.vo.role;

import org.cqtguniversity.lqms.pojo.vo.BaseVO;

import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 05- 14- 16:54
 */

public class RoleVO extends BaseVO {

    /**
     * 序号自增
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 修改时间
     */
    private Date gmtModified;
    /**
     * 角色名
     */
    private Long roleName;
    /**
     * 描述
     */
    private Long description;
    /**
     * 角色级别
     */
    private Integer level;

}
