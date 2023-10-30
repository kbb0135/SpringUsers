package com.Auth.Users;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class MySqlConfiguarion {
	//This object will be treated as bean
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSourceBuilder = new DriverManagerDataSource();
        dataSourceBuilder.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSourceBuilder.setUrl("jdbc:mysql://127.0.0.1:3306/users_db?useSSL=false");
        dataSourceBuilder.setUsername("root");
        dataSourceBuilder.setPassword("Nepal#123");
        return dataSourceBuilder;
	}

}