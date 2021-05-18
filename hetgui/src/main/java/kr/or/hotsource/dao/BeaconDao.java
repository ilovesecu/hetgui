package kr.or.hotsource.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.hotsource.dto.Beacon;

@Repository
public class BeaconDao {
	private NamedParameterJdbcTemplate jdbc;
	private RowMapper<Beacon> beaconMapper = BeanPropertyRowMapper.newInstance(Beacon.class);
	
	public BeaconDao(DataSource dataSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
}
