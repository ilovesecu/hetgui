package kr.or.hotsource.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.hotsource.dto.Flash;

@Repository
public class FlashDao {
	private NamedParameterJdbcTemplate jdbc;
	private RowMapper<Flash> flashMapper = BeanPropertyRowMapper.newInstance(Flash.class);
	
	public FlashDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
}
