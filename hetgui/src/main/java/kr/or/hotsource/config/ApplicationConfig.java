package kr.or.hotsource.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = {"kr.or.hotsource.service", "kr.or.hotsource.dao"})
@Import({DBConfig.class})
public class ApplicationConfig {

}
