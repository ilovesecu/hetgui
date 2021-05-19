package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Beacon;

public interface BeaconService {
	public List<Beacon> getBeacons();
	public Beacon getBeacon(String uuid);
}
