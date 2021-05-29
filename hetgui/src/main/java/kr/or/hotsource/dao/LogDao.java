package kr.or.hotsource.dao;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import static kr.or.hotsource.dao.sqls.LogDaoSqls.*;
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
	
	public Integer insertLog(Log log) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(log); //Log DTO -> Map 변경
		return insert.executeAndReturnKey(params).intValue();
	}
	
	public List<Log> selectAllLog(){
		return jdbc.query(SELECT_ALL_LOG, Collections.EMPTY_MAP, logMapper);
	}
	
	public Log selectLog(Integer id) {
		Map<String,?>params = Collections.singletonMap("id", id);
		return jdbc.queryForObject(SELECT_LOG, params, Log.class);
	}
	public Integer selectCount() {
		return jdbc.queryForObject(SELECT_COUNT, Collections.EMPTY_MAP, Integer.class);
	}
	public int deleteLog(Integer id) {
		Map<String,?>params = Collections.singletonMap("id", id);
		return jdbc.update(DELETE_LOG, params);
	}
}
