package org.cqtguniversity.lqms.service;

/**
 * @author Tangshengyu
 * @create 2018- 05- 12- 12:25
 */

public interface AsyncTaskService {

    // 异步发送投诉成功反馈通知
    void complaintEmail(String subject, String text);

    // 异步发送新投诉通知
    void complaintSendEmail(String email, String name);

    // 异步发送投诉已处理及结果
    void acceptComplaintEmail(String email, String subject, String text);

}
