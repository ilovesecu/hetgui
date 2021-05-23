package kr.or.hotsource.dao;

import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import kr.or.hotsource.dto.Location;

@Repository
public class LocationDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insert;
	SimpleJdbcCall jdbcCall;
	
	public LocationDao(DataSource dataSource, DataSource callSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
		jdbcCall = new SimpleJdbcCall(callSource); //mysql-connector 사용
		insert = new SimpleJdbcInsert(dataSource)
				.withTableName("flash")
				.usingGeneratedKeyColumns("id");
	}
	/*
	public void runRecvLocationProc(String uuid, Integer flashId) {
		Map<String, Object> params = new HashMap<String,Object>();
		params.put("uuid", uuid);
		params.put("flash_id", flashId);
		
		jdbcCall.withProcedureName("recvLocationProc");
		Map<String,Object> result = null;
		result=jdbcCall.execute(params);
		System.out.println(result.get("res"));
	}
	*/
	public String runRecvLocationProc(Location location) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(location);
		jdbcCall.withProcedureName("recvLocationProc");
		Map<String,Object> result = null;
		result=jdbcCall.execute(params);
		return (String)result.get("res");
	}
	
}
