package org.cqtguniversity.lqms.config.jms;

import org.cqtguniversity.lqms.service.AsyncTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

@Component
public class Consumer {

    @Autowired
    private AsyncTaskService asyncTaskService;

    // 使用JmsListener配置消费者监听的队列

    /**
     *
     * @param subject
     * @param text
     */
    @JmsListener(destination = "complaintEmail.queue")
    public void complaintEmail(String subject, String text) {
        // 打印队列信息
        System.out.println("队列接到消息:\n" + subject + "; " + text);
        // 存在设备
        // 创建一个线程任务
        asyncTaskService.complaintEmail(subject, text);
    }
}