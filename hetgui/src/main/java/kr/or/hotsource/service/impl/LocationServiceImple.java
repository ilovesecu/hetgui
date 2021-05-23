package kr.or.hotsource.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.LocationDao;
import kr.or.hotsource.dto.Location;
import kr.or.hotsource.service.LocationService;

@Service
public class LocationServiceImple implements LocationService{
	
	@Resource
	LocationDao locationDao;
	
	@Override
	public String recvLocation(Location location) {
		return locationDao.runRecvLocationProc(location);
	}
	
}
