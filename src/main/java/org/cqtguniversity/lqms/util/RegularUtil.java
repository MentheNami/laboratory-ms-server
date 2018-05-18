package org.cqtguniversity.lqms.util;

import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Tangshengyu
 * @create 2018- 05- 16- 11:12
 */

public class RegularUtil {

    public static String CELLPHONE = "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";

    public static boolean RegularCheck(String regular, String target) {
        Pattern pattern = Pattern.compile(regular);
        Matcher matcher = pattern.matcher(target);
        return matcher.matches();
    }

    public static void main(String[] args) {
        System.out.println(RegularUtil.RegularCheck(RegularUtil.CELLPHONE, "13647696216"));
        System.out.println(RegularUtil.RegularCheck(RegularUtil.CELLPHONE, "11111111111"));
    }
}
