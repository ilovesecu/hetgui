package kr.or.hotsource.service;

import kr.or.hotsource.dto.Location;
import kr.or.hotsource.dto.Locationsensing;

public interface LocationService {
	public String recvLocation(Location location, Locationsensing sensing);
	public String recvLocation(Location location);
}
