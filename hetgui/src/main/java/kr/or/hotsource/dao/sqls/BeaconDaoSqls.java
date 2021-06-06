package kr.or.hotsource.dao.sqls;

public class BeaconDaoSqls {
	public static final String SELECT_ALL_BEACON = "SELECT * FROM beacon ORDER BY FLOOR, SECTION";
	public static final String SELECT_BEACON = "SELECT * FROM beacon WHERE uuid = :uuid";
	public static final String SELECT_BEACON_COUNT = "SELECT COUNT(*) FROM beacon";
	public static final String DELETE_BEACONS = "DELETE FROM beacon WHERE uuid IN (:uuids)";
	public static final String UPDATE_BEACON = "UPDATE beacon SET city=:city, state=:state, building=:building, floor=:floor, section=:section WHERE uuid=:uuid";
}
