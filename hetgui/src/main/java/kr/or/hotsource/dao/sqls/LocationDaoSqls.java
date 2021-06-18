package kr.or.hotsource.dao.sqls;

public class LocationDaoSqls {
	public static final String SELECT_LOCATION_BY_FLOOR = "SELECT \r\n" + 
			"  f.id AS flash_id,\r\n" + 
			"  b.uuid,\r\n" + 
			"  b.floor,\r\n" + 
			"  b.section,\r\n" + 
			"  (SELECT temperature FROM locationsensing WHERE b.uuid=beacon_uuid ORDER BY id DESC LIMIT 1) AS temperature,\r\n" + 
			"  (SELECT humidity FROM locationsensing WHERE b.uuid=beacon_uuid ORDER BY id DESC LIMIT 1) AS humidity,\r\n" + 
			"  TIMEDIFF(NOW(), f.send_time) AS time_diff\r\n" + 
			"FROM\r\n" + 
			"  flash f \r\n" + 
			"  INNER JOIN beacon b \r\n" + 
			"    ON f.uuid = b.uuid\r\n" + 
			"WHERE b.floor = :floor \r\n" + 
			"  AND f.detachment = 'y'\r\n" + 
			"ORDER BY section ASC";
	
}
