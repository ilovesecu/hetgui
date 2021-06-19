package kr.or.hotsource.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

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
	public static String getTimeStraphhmmss() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
		String time=sdf.format(timestamp);
		return time;
	}
	
	/*
	 * 클라이언트 IP주소를 반환한다.
	 * @Param req : request 객체 
	 */
	public static String getIpAddr(HttpServletRequest req) {
		String ip = req.getHeader("X-FORWARDED-FOR");
		if (ip == null)
			ip = req.getRemoteAddr();
		return ip;
	}
}
