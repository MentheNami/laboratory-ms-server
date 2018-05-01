package org.cqtguniversity.lqms;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

// 启用定时任务配置
@EnableScheduling
@MapperScan({"org.cqtguniversity.lqms.mapper*"})
@ServletComponentScan
@SpringBootApplication
public class LqmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(LqmsApplication.class, args);
	}
}
