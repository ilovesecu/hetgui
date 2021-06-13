package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Beacon;

public interface BeaconService {
	public static final Integer PAGING = 5; //페이지 당 보여질 개수
	public List<Beacon> getBeacons();
	public List<Beacon> getBeacons(int start);
	public Beacon getBeacon(String uuid);
	public Integer getBeaconCount();
	public Integer addBeacon(Beacon beacon);//비콘 추가
	public Integer deleteBeacons(List<String>uuids); //비콘 삭제
	public int updateBeacon(Beacon beacon, String old_uuid);
}
