package kr.or.hotsource.config.test;

import java.sql.Connection;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.or.hotsource.config.ApplicationConfig;

public class DBConfigTest {

	public static void main(String[] args) {
		ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		DataSource ds = (DataSource) ac.getBean("callSource"); //mysql-connector 연결테스트
		try (Connection conn = ds.getConnection()) {
			if (conn != null) {
				System.out.println("접속성공^^");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
