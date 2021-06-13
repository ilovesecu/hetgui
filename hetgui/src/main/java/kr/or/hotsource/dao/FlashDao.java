package kr.or.hotsource.dao;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.mariadb.jdbc.SimpleParameterMetaData;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import kr.or.hotsource.dto.Flash;
import static kr.or.hotsource.dao.sqls.FlashDaoSqls.*;

@Repository
public class FlashDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insertAction;
	private RowMapper<Flash> flashMapper = BeanPropertyRowMapper.newInstance(Flash.class);
	
	public FlashDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
		this.insertAction = new SimpleJdbcInsert(dataSource)
				.withTableName("flash")
				.usingColumns("model","firmware")
				.usingGeneratedKeyColumns("id");
	}
	
	public Integer insertFlash(Flash flash) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(flash);
		return insertAction.executeAndReturnKey(params).intValue();
	}
	//페이징 X
	public List<Flash> selectAllFlash(){
		return jdbc.query(SELECT_ALL_FLASH, Collections.EMPTY_MAP, flashMapper);
	}
	//페이징 O
	public List<Flash> selectAllFlash(int start, int limit){
		Map<String,Object> params = new HashMap<>();
		params.put("start", start);
		params.put("limit", limit);
		return jdbc.query(SELECT_ALL_FLASH_PAGING, params, flashMapper);
	}
	//Detachment가 'y'인 플래시를 가져온다.
	public List<Flash> selectEmergencyFlash(){
		return jdbc.query(SELECT_EMERGENCY_FLASH, Collections.EMPTY_MAP, flashMapper);
	}
	
	public Flash selectFlash(Integer id) {
		Map<String,?> params = Collections.singletonMap("id", id);
		return jdbc.queryForObject(SELECT_FLASH, params, flashMapper);
	}
	public Integer selectFlashCount() {
		return jdbc.queryForObject(SELECT_FLASH_COUNT, Collections.EMPTY_MAP, Integer.class);
	}
	public int deleteFlashes(List<Integer>ids) {
		Map<String,?> params = Collections.singletonMap("ids", ids);
		return jdbc.update(DELETE_FLASH, params);
	}
	public int updateFlash(Flash flash) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(flash);
		return jdbc.update(UPDATE_FLASH, params);
	}
}
