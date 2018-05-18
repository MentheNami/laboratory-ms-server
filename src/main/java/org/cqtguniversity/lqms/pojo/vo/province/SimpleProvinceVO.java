package org.cqtguniversity.lqms.pojo.vo.province;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import org.cqtguniversity.lqms.pojo.vo.BaseVO;

/**
 * @author Tangshengyu
 * @create 2018- 05- 18- 10:30
 */

public class SimpleProvinceVO extends BaseVO {

    /**
     * 自增序号
     */
    private Long id;

    /**
     * 省份名称
     */
    private String provinceName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    @Override
    public String toString() {
        return super.toString() + "SimpleProvinceVO{" +
                "id=" + id +
                ", provinceName='" + provinceName + '\'' +
                '}';
    }
}
