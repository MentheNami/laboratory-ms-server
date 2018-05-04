package org.cqtguniversity.lqms.construct;

import java.util.Arrays;
import java.util.List;

/**
 * @author wang26211
 * @create 2018- 05- 03- 8:46
 */
public class NumStructureConstruct {

    /**
     * 年份
     */
    public static final String YEAR = "{YEAR}";

    /**
     * 月份
     */
    public static final String MONTH = "{MONTH}";

    /**
     * 日
     */
    public static final String DAY = "{DAY}";

    /**
     * 编号
     */
    public static final String NUM = "{NUM}";

    /**
     * 版本
     */
    public static final String TYPE = "{TYPE}";

    /**
     * 创建字符串集合，包含所有结构
     */
    public static final List<String> PREFIX_LIST = Arrays.asList(YEAR, MONTH, DAY, NUM, TYPE);
}
