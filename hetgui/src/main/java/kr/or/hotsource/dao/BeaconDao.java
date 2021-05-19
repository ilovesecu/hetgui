package kr.or.hotsource.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import static kr.or.hotsource.dao.sqls.BeaconDaoSqls.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import kr.or.hotsource.dto.Beacon;

@Repository
public class BeaconDao {
	private NamedParameterJdbcTemplate jdbc;
	private RowMapper<Beacon> beaconMapper = BeanPropertyRowMapper.newInstance(Beacon.class);
	
	public BeaconDao(DataSource dataSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	public List<Beacon> selectAllBeacon(){
		return jdbc.query(SELECT_ALL_BEACON, Collections.EMPTY_MAP, beaconMapper);
	}
	
	public Beacon selectBeacon(String uuid) {
		Map<String,?> params = Collections.singletonMap("uuid", uuid);
		return jdbc.queryForObject(SELECT_BEACON, params, Beacon.class);
	}
}
