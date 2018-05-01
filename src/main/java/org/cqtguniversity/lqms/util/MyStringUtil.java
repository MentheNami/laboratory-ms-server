package org.cqtguniversity.lqms.util;

import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Tangshengyu
 * @create 2018- 03- 05- 17:25
 */

public class MyStringUtil {

    private static final String NUMBERS = "0123456789";

    /**
     * 首字母大写方法
     * @param str 源字符串
     * @return 首字母大写-目标字符串
     */
    public static String firstLetterToUpper(String str){
        char[] array = str.toCharArray();
        array[0] -= 32;
        return String.valueOf(array);
    }

    public static Integer[] slipIdStr(String idStr){
        if(null == idStr){
            return null;
        }
        if(idStr.contains(",")){
            String[] ss = idStr.split(",");
            Integer[] ids = new Integer[ss.length];
            for(int i = 0; i < ss.length; i++){
                ids[i] = Integer.valueOf(ss[i].trim());
            }
            return ids;
        } else {
            return new Integer[]{Integer.valueOf(idStr)};
        }
    }

    public static String[] slipStr(String str){
        if(null == str){
            return null;
        }
        if(str.contains(",")){
            return str.split(",");
        } else {
            return new String[]{str};
        }
    }

    public static String strListToStr(List<String> stringList){
        if(null == stringList)
            return null;
        else if(stringList.size() == 1)
            return stringList.get(0);
        else if(stringList.size() > 0) {
            StringBuilder sb = new StringBuilder();
            for (String s : stringList) {
                sb.append(s);
                sb.append(",");
            }
            sb.delete(sb.length()-1, sb.length());
            return sb.toString();
        } else
            return null;
    }

    public static String matchUsernameByExpression(String expressionText) {
        String pattern = "(\\w)+";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(expressionText);
        while (m.find())
            return m.group();
        return null;
    }

    public static boolean upperCaseequals(String formkey, String approve) {
        return formkey.toUpperCase().equals(approve.toUpperCase());
    }

    public static String randomCode() {
        int codesLen = NUMBERS.length();
        Random rand = new Random();
        StringBuilder verifyCode = new StringBuilder(4);
        for(int i = 0; i < 4; i++){
            verifyCode.append(NUMBERS.charAt(rand.nextInt(codesLen-1)));
        }
        return verifyCode.toString();
    }

}
