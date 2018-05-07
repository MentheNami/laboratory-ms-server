package org.cqtguniversity.lqms.util;

import org.apache.commons.lang.RandomStringUtils;

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
//        //发送一条短信
//        TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
//        AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
//        req.setExtend("123456");
//        req.setSmsType("normal");
//        req.setSmsFreeSignName("毕业设计");
//        req.setSmsParamString("{\"code\":\""+verificationCode+"\"}");
//        //由于测试，暂时只固定发送自己的电话号码
//        req.setRecNum(cellphoneNumber);
//        req.setSmsTemplateCode("SMS_133964823");
//        AlibabaAliqinFcSmsNumSendResponse rsp = null;
//        try {
//            rsp = client.execute(req);
//            System.out.println(rsp.getBody());
//        } catch (ApiException e) {
//            e.printStackTrace();
//        }
        return verificationCode;
    }

    public static void main(String[] args) {
        getVerificationCode("13647696216");
    }

    //public static void getCode(String cellPhone) {
    //    String host = "http://dingxin3.market.alicloudapi.com";
    //    String path = "/dx/largeSendSms";
    //    String method = "POST";
    //    String appcode = "你自己的AppCode";
    //    Map<String, String> headers = new HashMap<String, String>();
    //    //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
    //    headers.put("Authorization", "APPCODE " + appcode);
    //    Map<String, String> querys = new HashMap<String, String>();
    //    querys.put("mobile", "159XXXX9999");
    //    querys.put("param", "param");
    //    querys.put("tpl_id", "TP1802096");
    //    Map<String, String> bodys = new HashMap<String, String>();
    //
    //
    //    try {
    //        /**
    //         * 重要提示如下:
    //         * HttpUtils请从
    //         * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
    //         * 下载
    //         *
    //         * 相应的依赖请参照
    //         * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
    //         */
    //        HttpResponse response = HttpUtils.doPost(host, path, method, headers, querys, bodys);
    //        System.out.println(response.toString());
    //        //获取response的body
    //        //System.out.println(EntityUtils.toString(response.getEntity()));
    //    } catch (Exception e) {
    //        e.printStackTrace();
    //    }
    //}
}
