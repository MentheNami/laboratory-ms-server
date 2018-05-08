package org.cqtguniversity.lqms.util;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import org.apache.commons.lang.RandomStringUtils;

import javax.swing.text.html.FormSubmitEvent;

/**
 * @author Tangshengyu
 * @create 2018- 05- 04- 20:00
 */

public class CellPhoneUtil {

    static String appkey = "LTAI7gsKSIZ6bTNS";
    static String secret = "NF9bAN3J0qLWaqfmzQosmM0izfwG6w";
    static String url = "http://gw.api.taobao.com/router/rest";

    public static String getVerificationCode(String cellphoneNumber) {
        String verificationCode = RandomStringUtils.random(6, "1234567890");
        //发送一条短信
        TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
        AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
        req.setExtend("123456");
        req.setSmsType("normal");
        req.setSmsFreeSignName("毕业设计");
        req.setSmsParamString("{\"code\":\"" + verificationCode + "\"}");
        //由于测试，暂时只固定发送自己的电话号码
        req.setRecNum(cellphoneNumber);
        req.setSmsTemplateCode("SMS_133964823");
        AlibabaAliqinFcSmsNumSendResponse rsp = null;
        try {
            rsp = client.execute(req);
            System.out.println(rsp.getBody());
        } catch (ApiException e) {
            e.printStackTrace();
        }
        return verificationCode;
    }

    public static void main(String[] args) {
        getVerificationCode("13647696216");
    }

}
