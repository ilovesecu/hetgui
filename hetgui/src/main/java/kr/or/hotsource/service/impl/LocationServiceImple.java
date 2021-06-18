package kr.or.hotsource.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.LocationDao;
import kr.or.hotsource.dto.Location;
import kr.or.hotsource.dto.Locationsensing;
import kr.or.hotsource.dto.MapLocation;
import kr.or.hotsource.service.LocationService;

@Service
public class LocationServiceImple implements LocationService{
	
	@Resource
	LocationDao locationDao;
	
	@Override
	public String recvLocation(Location location, Locationsensing sensing) {
		//센싱 정보가 오지 않았다면 0으로 설정해준다.
		if(sensing.getTemperature()==null) sensing.setTemperature(0);
		if(sensing.getHumidity()==null) sensing.setHumidity(0);
		if(sensing.getSensingTime()==null) sensing.setSensingTime("0000-00-00 00:00:00");
		return locationDao.runRecvLocationProc(location,sensing);
	}
	@Override
	public String recvLocation(Location location) {
		return locationDao.runRecvLocationProc(location);
	}
	@Override
	public List<MapLocation> getLocationByFloor(String floor) {
		return locationDao.selectLocationByFloor(floor);
	}
}
