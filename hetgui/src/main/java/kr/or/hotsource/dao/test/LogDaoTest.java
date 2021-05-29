package kr.or.hotsource.dao.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.or.hotsource.config.ApplicationConfig;
import kr.or.hotsource.dao.LogDao;
import kr.or.hotsource.dto.Log;
import kr.or.hotsource.utils.Util;

public class LogDaoTest {
	public static void main(String args[]) {
		ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		LogDao logDao=ac.getBean(LogDao.class);
		String time = Util.getTimeStampStr();
		
		//for(int i=0; i<1000; i++) {
			Log log = new Log();
			log.setIp("127.0.0.1");
			//log.setMethod("test"+i);
			log.setMethod("test");
			log.setTime(time);
			int result=logDao.insertLog(log);
			System.out.println("id:"+result+"를 입력 하였습니다.");
		//}
		
		
		List<Log> logs=logDao.selectAllLog();
		for(Log l:logs) {
			System.out.println(l);
		}
	}
}
