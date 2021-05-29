package kr.or.hotsource.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Util {
	/*
	 * yyyy-MM-dd hh:mm:ss 형태로 시간을 문자열로 반환한다. 
	 */
	public static String getTimeStampStr() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time=sdf.format(timestamp);
		return time;
	}
}
