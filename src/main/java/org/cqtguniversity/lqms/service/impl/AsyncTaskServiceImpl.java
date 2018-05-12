package org.cqtguniversity.lqms.service.impl;

import org.cqtguniversity.lqms.service.AsyncTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 12:29
 */
@Service
public class AsyncTaskServiceImpl implements AsyncTaskService {

    @Autowired
    private JavaMailSender javaMailSender; //自动注入的Bean

    @Value("${spring.mail.username}")
    private String Sender; //读取配置文件中的参数

    @Value("${wangyi.mail.complaint.accept.username}")
    private String accepter;

    private void sendEmail(SimpleMailMessage simpleMailMessage) {
        try {
            javaMailSender.send(simpleMailMessage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    @Async
    public void complaintEmail(String subject, String Text) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        // 发送账号
        simpleMailMessage.setFrom(Sender);
        // 接受账号
        simpleMailMessage.setTo(accepter);
        simpleMailMessage.setSubject("投诉建议:" + subject);
        simpleMailMessage.setText(Text);
        sendEmail(simpleMailMessage);
    }

    @Override
    @Async
    public void complaintSendEmail(String email, String name) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        // 发送账号
        simpleMailMessage.setFrom(Sender);
        // 接受账号
        simpleMailMessage.setTo(email);
        simpleMailMessage.setSubject("投诉建议已接收");
        simpleMailMessage.setText("感谢" + name + ", 提供的宝贵建议，已通知受理人员处理，请关照后续进展。");
        sendEmail(simpleMailMessage);
    }

    @Override
    public void acceptComplaintEmail(String email, String subject, String text) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        // 发送账号
        simpleMailMessage.setFrom(Sender);
        // 接受账号
        simpleMailMessage.setTo(email);
        simpleMailMessage.setSubject(subject);
        simpleMailMessage.setText(text);
        sendEmail(simpleMailMessage);
    }

}
