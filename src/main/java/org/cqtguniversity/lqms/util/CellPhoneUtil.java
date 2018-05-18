package org.cqtguniversity.lqms.util;


import org.apache.commons.lang.RandomStringUtils;
import org.apache.http.HttpResponse;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 20:00
 */

public class CellPhoneUtil {

    public static String getVerificationCode(String cellPhone) {
        String verificationCode = RandomStringUtils.random(6, "1234567890");
        String host = "http://yzxyx.market.alicloudapi.com";
        String path = "/yzx/marketSms";
        String method = "POST";
        String appCode = "6b4b6a9838184785a8959651ea69f886";
        Map<String, String> headers = new HashMap<String, String>();
        //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
        headers.put("Authorization", "APPCODE " + appCode);
        Map<String, String> querys = new HashMap<String, String>();
        querys.put("phone", cellPhone);
        querys.put("templateId", "TP1805168");
        querys.put("variable", "code:" + verificationCode);
        Map<String, String> bodys = new HashMap<String, String>();
        try {
            HttpResponse response = HttpUtils.doPost(host, path, method, headers, querys, bodys);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return verificationCode;
    }

}
