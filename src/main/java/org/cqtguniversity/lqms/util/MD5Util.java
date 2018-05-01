package org.cqtguniversity.lqms.util;

import java.security.MessageDigest;

/**
 * Java MD5 加密
 * @author Tangshengyu
 * @create 2018- 03- 20- 11:44
 */

public class MD5Util {

    public static String MD5(String s) {
        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (byte byte0 : md) {
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public static void main(String[] args) {
        //测试
        System.out.println(MD5Util.MD5("啦啦"));
        System.out.println(MD5Util.MD5("123"));
        System.out.println(MD5Util.MD5("1"));
    }

}

