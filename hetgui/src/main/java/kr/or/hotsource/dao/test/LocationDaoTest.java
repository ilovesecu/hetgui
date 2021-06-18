package kr.or.hotsource.dao.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.or.hotsource.config.ApplicationConfig;
import kr.or.hotsource.dao.LocationDao;
import kr.or.hotsource.dto.Location;
import kr.or.hotsource.dto.MapLocation;

public class LocationDaoTest {
	public static void main(String args[]) {
		ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		LocationDao locationDao = ac.getBean(LocationDao.class);
		/*
		Location location = new Location();
		location.setFlashId(3);
		location.setUuid("5424-4516-7512-7511");
		location.setClientIp("127.0.0.1");
		location.setTime("2021-05-22 23:37:04");
		locationDao.runRecvLocationProc(location);
		*/
		List<MapLocation> lists = locationDao.selectLocationByFloor("1F");
		for(MapLocation item : lists) {
			System.out.println(item);
		}
	}
}
