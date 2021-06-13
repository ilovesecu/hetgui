package kr.or.hotsource.dao.sqls;

public class FlashDaoSqls {
	public static final String SELECT_ALL_FLASH = "SELECT * FROM flash;";
	public static final String SELECT_ALL_FLASH_PAGING = "SELECT * FROM flash LIMIT :start, :limit";
	public static final String SELECT_EMERGENCY_FLASH = "SELECT * FROM flash WHERE detachment='y'";
	public static final String SELECT_FLASH = "SELECT * FROM flash WHERE id = :id";
	public static final String SELECT_FLASH_COUNT = "SELECT COUNT(*) FROM flash";
	public static final String DELETE_FLASH = "DELETE FROM flash WHERE id IN (:ids)";
	public static final String UPDATE_FLASH = "UPDATE flash SET model = :model, firmware = :firmware, detachment = :detachment WHERE id = :id";
}
