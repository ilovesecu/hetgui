package kr.or.hotsource.dao.sqls;

public class BeaconDaoSqls {
	public static final String SELECT_ALL_BEACON = "SELECT * FROM beacon";
	public static final String SELECT_BEACON = "SELECT * FROM beacon WHERE uuid = :uuid";
	public static final String SELECT_BEACON_COUNT = "SELECT COUNT(*) FROM beacon";
}
