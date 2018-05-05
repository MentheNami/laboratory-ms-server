package org.cqtguniversity.lqms.util;

import org.apache.commons.lang.RandomStringUtils;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 20:00
 */

public class CellPhoneUtil {

    static String appkey = "24673002";
    static String secret = "9e38775437d55eb989db7455695eb759";
    static String url = "http://gw.api.taobao.com/router/rest";

    public static void getVerificationCode(String cellphoneNumber) {
        String verificationCode = "【" + RandomStringUtils.random(6, "1234567890") + "】";
        //发送一条短信
        TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
        AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
        req.setExtend("123456");
        req.setSmsType("normal");
        req.setSmsFreeSignName("毕业设计");
        req.setSmsParamString("{\"system\":\"" + "实验室质量管理系统" + "\",\"code\":\""+verificationCode+"\",\"minute\":\""+10+"\"}");
        //由于测试，暂时只固定发送自己的电话号码
        req.setRecNum(cellphoneNumber);
        req.setSmsTemplateCode("SMS_133979141");
        AlibabaAliqinFcSmsNumSendResponse rsp = null;
        try {
            rsp = client.execute(req);
            System.out.println(rsp.getBody());
        } catch (ApiException e) {
            e.printStackTrace();
        }
    }
}
