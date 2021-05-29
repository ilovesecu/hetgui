package kr.or.hotsource.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;

@Configuration
@EnableAspectJAutoProxy
@ComponentScan(basePackages = {"kr.or.hotsource.service", "kr.or.hotsource.dao","kr.or.hotsource.aop"})
@Import({DBConfig.class})
public class ApplicationConfig {

}
