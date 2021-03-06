package kr.or.hotsource.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import static kr.or.hotsource.dao.sqls.BeaconDaoSqls.*;
import static kr.or.hotsource.dao.sqls.FlashDaoSqls.SELECT_ALL_FLASH_PAGING;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.hotsource.dto.Beacon;
import kr.or.hotsource.dto.Flash;

@Repository
public class BeaconDao {
	private NamedParameterJdbcTemplate jdbc;
	private RowMapper<Beacon> beaconMapper = BeanPropertyRowMapper.newInstance(Beacon.class);
	private SimpleJdbcInsert insertAction;
	
	public BeaconDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
		this.insertAction = new SimpleJdbcInsert(dataSource)
				.withTableName("beacon");
	}
	public Integer insertBeacon(Beacon beacon) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(beacon);
		return insertAction.execute(params);
	}
	//페이징 X
	public List<Beacon> selectAllBeacon(){
		return jdbc.query(SELECT_ALL_BEACON, Collections.EMPTY_MAP, beaconMapper);
	}
	//페이징 O
	public List<Beacon> selectAllBeacon(int start, int limit){
		Map<String,Object> params = new HashMap<>();
		params.put("start", start);
		params.put("limit", limit);
		return jdbc.query(SELECT_ALL_BEACON_PAGING, params, beaconMapper);
	}
	
	public Beacon selectBeacon(String uuid) {
		Map<String,?> params = Collections.singletonMap("uuid", uuid);
		return jdbc.queryForObject(SELECT_BEACON, params, beaconMapper);
	}
	public Integer selectBeaconCount() {
		return jdbc.queryForObject(SELECT_BEACON_COUNT, Collections.EMPTY_MAP, Integer.class);
	}
	public int deleteBeacon(List<String>uuids) {
		Map<String,?>params = Collections.singletonMap("uuids", uuids);
		return jdbc.update(DELETE_BEACONS, params);
	}
	public int updateBeacon(Beacon beacon, String old_uuid) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(beacon);
		return jdbc.update(UPDATE_BEACON, params);
	}
}
