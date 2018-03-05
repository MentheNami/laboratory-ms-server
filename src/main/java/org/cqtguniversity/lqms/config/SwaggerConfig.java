package org.cqtguniversity.lqms.config;

import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * @author Tangshengyu
 * @create 2018- 03- 05- 17:17
 */

public class SwaggerConfig {

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()  // 选择那些路径和api会生成document
                .apis(RequestHandlerSelectors.basePackage("org.cqtguniversity.lqms")) // 对该包下的Controller进行监控
                .paths(PathSelectors.any()) // 对所有路径进行监控
                .build();
    }
}
