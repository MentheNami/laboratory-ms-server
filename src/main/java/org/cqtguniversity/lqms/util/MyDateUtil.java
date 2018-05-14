package org.cqtguniversity.lqms.util;

import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 03- 29- 10:10
 */
@Component
public class MyDateUtil {

    public static final String YYYY_MM_DD_C = "yyyy年MM月dd日";
    public static final String YYYY_MM_DD_E = "yyyy-MM-dd";
    public static final String YYYY_MM_DD_HH_MM_SS_C = "yyyy年MM月dd日 HH时mm分ss秒";
    public static final String YYYY_MM_DD_HH_MM_SS_E = "yyyy-MM-dd HH:mm:ss";
    public static final String YYYY_MM_DD_HH_MM_C = "yyyy年MM月dd日 HH时mm分";
    public static final String YYYY_MM_DD_HH_MM_E = "yyyy-MM-dd HH:mm";

    public static String simpleDateFormat(Date date, String format) {
        if (null == date) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        return simpleDateFormat.format(date);
    }

    public static boolean isEqual(Date startTime, Date endTime) {
        Calendar calDateA = Calendar.getInstance();
        calDateA.setTime(startTime);

        Calendar calDateB = Calendar.getInstance();
        calDateB.setTime(endTime);

        return calDateA.get(Calendar.YEAR) == calDateB.get(Calendar.YEAR)
                && calDateA.get(Calendar.MONTH) == calDateB.get(Calendar.MONTH)
                &&  calDateA.get(Calendar.DAY_OF_MONTH) == calDateB.get(Calendar.DAY_OF_MONTH);
    }

    public static Integer getPeriod(Date periodTime) {
        Calendar calendarPeriod = Calendar.getInstance();
        calendarPeriod.setTime(periodTime);
        return calendarPeriod.get(Calendar.HOUR_OF_DAY);
    }
}
