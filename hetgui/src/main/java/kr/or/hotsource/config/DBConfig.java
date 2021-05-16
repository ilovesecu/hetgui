package kr.or.hotsource.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

@Configuration
@EnableTransactionManagement
public class DBConfig implements TransactionManagementConfigurer{
	private String driverName = "org.mariadb.jdbc.Driver";
	private String dbUrl = "jdbc:mysql://localhost:3306/hetgui?useUnicode=true&characterEncoding=utf-8";
	private String dbUser = "hotsource";
	private String dbPassword = "hotsource";
	
	@Bean
	public DataSource dataSource() {
		BasicDataSource datasource = new BasicDataSource();
		datasource.setDriverClassName(driverName);
		datasource.setUrl(dbUrl);
		datasource.setUsername(dbUser);
		datasource.setPassword(dbPassword);
		return datasource;
	}
	
	@Override
	public PlatformTransactionManager annotationDrivenTransactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
	
}
