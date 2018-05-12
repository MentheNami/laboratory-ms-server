package org.cqtguniversity.lqms.util.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 9:32
 */
@Component
public class WangYiEmail {

    private JavaMailSender javaMailSender; //自动注入的Bean

    @Value("${spring.mail.username}")
    private String Sender; //读取配置文件中的参数

    @Value("${wangyi.mail.complaint.accept.username}")
    private String accepter;

    public void complaintEmail(String subject, String Text) {
        SimpleMailMessage message = new SimpleMailMessage();
        // 发送账号
        message.setFrom(Sender);
        // 接受账号
        message.setTo(accepter);
        message.setSubject("投诉建议:" + subject);
        message.setText(Text);
        javaMailSender.send(message);
    }

    public void complaintSendEmail(String email, String name) {
        SimpleMailMessage message = new SimpleMailMessage();
        // 发送账号
        message.setFrom(Sender);
        // 接受账号
        message.setTo(email);
        message.setSubject("投诉建议已接收");
        message.setText("感谢" + name + ", 提供的宝贵建议，已通知受理人员处理，请关照后续进展。");
        javaMailSender.send(message);
    }

}
