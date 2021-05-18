package kr.or.hotsource.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import kr.or.hotsource.dto.Log;

@Repository
public class LogDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insert;
	private RowMapper<Log> logMapper = BeanPropertyRowMapper.newInstance(Log.class);
	
	public LogDao(DataSource dataSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
		insert = new SimpleJdbcInsert(dataSource)
				.withTableName("log")
				.usingGeneratedKeyColumns("id");
	}
}
