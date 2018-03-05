package org.cqtguniversity.lqms.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

/**
 * @author Tangshengyu
 * @create 2018- 03- 05- 17:28
 */

public class DateUtil {

    private static final SimpleDateFormat YYYYMMDDSPLIT_SDF = new SimpleDateFormat("yyyy-MM-dd");
    private static final SimpleDateFormat YYYYMMDDHHMMSPLIT_SDF = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    private static final SimpleDateFormat YYYYMMDDTHHMMSSSSSSZSPLIT_SDF = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private static final Long ONE_DAY_UNIX = 24 * 60 * 60 * 1000L;
    private static final Long ONE_HOUR_UNIX = 60 * 60 * 1000L;
    private static final Long ONE_MINUTE_UNIX = 60 * 1000L;

    private static int[] getNeturalAge(Calendar calendarBirth, Calendar calendarNow) {
        int diffYears = 0, diffMonths, diffDays;
        int dayOfBirth = calendarBirth.get(Calendar.DAY_OF_MONTH);
        int dayOfNow = calendarNow.get(Calendar.DAY_OF_MONTH);
        if (dayOfBirth <= dayOfNow) {
            diffMonths = getMonthsOfAge(calendarBirth, calendarNow);
            diffDays = dayOfNow - dayOfBirth;
            if (diffMonths == 0)
                diffDays++;
        } else {
            if (isEndOfMonth(calendarBirth)) {
                if (isEndOfMonth(calendarNow)) {
                    diffMonths = getMonthsOfAge(calendarBirth, calendarNow);
                    diffDays = 0;
                } else {
                    calendarNow.add(Calendar.MONTH, -1);
                    diffMonths = getMonthsOfAge(calendarBirth, calendarNow);
                    diffDays = dayOfNow + 1;
                }
            } else {
                if (isEndOfMonth(calendarNow)) {
                    diffMonths = getMonthsOfAge(calendarBirth, calendarNow);
                    diffDays = 0;
                } else {
                    calendarNow.add(Calendar.MONTH, -1);// 上个月
                    diffMonths = getMonthsOfAge(calendarBirth, calendarNow);
                    // 获取上个月最大的一天
                    int maxDayOfLastMonth = calendarNow.getActualMaximum(Calendar.DAY_OF_MONTH);
                    if (maxDayOfLastMonth > dayOfBirth) {
                        diffDays = maxDayOfLastMonth - dayOfBirth + dayOfNow;
                    } else {
                        diffDays = dayOfNow;
                    }
                }
            }
        }
        // 计算月份时，没有考虑年
        diffYears = diffMonths / 12;
        diffMonths = diffMonths % 12;
        return new int[]{diffYears, diffMonths, diffDays};
    }

    /**
     * 获取两个日历的月份之差
     *
     * @param calendarBirth 减数月份
     * @param calendarNow 被减数月份
     * @return 差月份
     */
    private static int getMonthsOfAge(Calendar calendarBirth,
                                      Calendar calendarNow) {
        return (calendarNow.get(Calendar.YEAR) - calendarBirth
                .get(Calendar.YEAR)) * 12 + calendarNow.get(Calendar.MONTH)
                - calendarBirth.get(Calendar.MONTH);
    }

    /**
     * 判断这一天是否是月底
     *
     * @param calendar 源日期
     * @return 是否为月底
     */
    private static boolean isEndOfMonth(Calendar calendar) {
        int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
        return dayOfMonth == calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    }

    /**
     * 通过时间秒毫秒数判断两个时间的间隔
     * @param date1 减数时间
     * @param date2 被减数时间
     * @return 差时间
     */
    private static int differentDaysByMillisecond(Date date1, Date date2)
    {
        int days = (int) ((date2.getTime() - date1.getTime()) / (1000*3600*24));
        return days;
    }

    public static String getYYYYMMDD(Date endTimePlan) {
        if (null != endTimePlan)
            return YYYYMMDDSPLIT_SDF.format(endTimePlan);
        else
            return null;
    }

    public static String getYYYYMMDDTHHMMSSSSSSZ(Date date) {
        if (null != date)
            return YYYYMMDDTHHMMSSSSSSZSPLIT_SDF.format(date);
        else
            return null;
    }

    /**
     * date2 - date1
     *
     * @param date1 减数
     * @param date2 被减数
     * @return 差
     */
    public static int[] dateDiff(Date date1, Date date2) throws Exception {
        if (date1.after(date2))
            throw new Exception("日期相减错误，减数大于被减数");
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(date1);
        c2.setTime(date2);
        return getNeturalAge(c1, c2);
    }

    public static void main(String[] args) {
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        try {
            c1.setTime(YYYYMMDDSPLIT_SDF.parse("2013-09-03"));
            c2.setTime(YYYYMMDDSPLIT_SDF.parse("2013-02-07"));
            System.out.println(Arrays.toString(getNeturalAge(c2, c1)));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public static String transferToYYYYMMDDHHMM(Date date) {
        return YYYYMMDDHHMMSPLIT_SDF.format(date);
    }

    public static String dateUnixDiff(Date startTime, Date endTime) {
        if (null == endTime || null == startTime) {
            return "无";
        }
        if (endTime.before(startTime)) {
            return "神速";
        }
        long t1 = endTime.getTime();
        long t2 = startTime.getTime();
        long diff = t1 - t2;

        int hour = 0;
        int minute = 0;
        int second = 0;

        long hourLong = diff / ONE_HOUR_UNIX;
        hour = (int) hourLong;
        long leftHour = diff % ONE_HOUR_UNIX;

        long minuteLong = leftHour / ONE_MINUTE_UNIX;
        minute = (int) minuteLong;
        long leftMinute = leftHour % ONE_MINUTE_UNIX;

        long secondLong = leftMinute/1000;
        second = (int) secondLong;

        StringBuilder sb = new StringBuilder();
        if(0 != hour){
            sb.append(hour).append("小时");
        }
        if(0 != minute){
            sb.append(minute).append("分");
        }
        if(0 != second){
            sb.append(second).append("秒");
        }

        return sb.toString();

    }

    public static Integer dateDiffWithNow(Date endTimePlan) {
        Calendar now = Calendar.getInstance();
        Calendar that = Calendar.getInstance();
        that.setTime(endTimePlan);
        return differentDaysByMillisecond(now.getTime(), endTimePlan);
    }

    public static int getCurrentYear() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(Calendar.YEAR);
    }
}
