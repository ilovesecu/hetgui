package kr.or.hotsource.dao.sqls;

public class LogDaoSqls {
	public static final String SELECT_ALL_LOG = "SELECT * FROM LOG";
	public static final String SELECT_LOG = "SELECT * FROM LOG WHERE id=:id";
	public static final String DELETE_LOG = "DELETE FROM LOG WHERE id = :id";
	public static final String SELECT_COUNT = "SELECT COUNT(id) FROM LOG";
}
