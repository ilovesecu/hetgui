package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Location;
import kr.or.hotsource.dto.Locationsensing;
import kr.or.hotsource.dto.MapLocation;

public interface LocationService {
	public String recvLocation(Location location, Locationsensing sensing);
	public String recvLocation(Location location);
	public List<MapLocation> getLocationByFloor(String floor);
}
