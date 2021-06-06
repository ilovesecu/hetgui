package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Beacon;

public interface BeaconService {
	public List<Beacon> getBeacons();
	public Beacon getBeacon(String uuid);
	public Integer getBeaconCount();
	public Integer addBeacon(Beacon beacon);//비콘 추가
	public Integer deleteBeacons(List<String>uuids); //비콘 삭제
	public int updateBeacon(Beacon beacon, String old_uuid);
}
