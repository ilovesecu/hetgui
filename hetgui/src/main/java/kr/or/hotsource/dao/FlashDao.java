package kr.or.hotsource.dao;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.hotsource.dto.Flash;
import static kr.or.hotsource.dao.sqls.FlashDaoSqls.*;

@Repository
public class FlashDao {
	private NamedParameterJdbcTemplate jdbc;
	private RowMapper<Flash> flashMapper = BeanPropertyRowMapper.newInstance(Flash.class);
	
	public FlashDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	public List<Flash> selectAllFlash(){
		return jdbc.query(SELECT_ALL_FLASH, Collections.EMPTY_MAP, flashMapper);
	}
	public Flash selectFlash(Integer id) {
		Map<String,?> params = Collections.singletonMap("id", id);
		return jdbc.queryForObject(SELECT_FLASH, params, Flash.class);
	}
}
