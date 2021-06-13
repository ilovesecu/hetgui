package kr.or.hotsource.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.BeaconDao;
import kr.or.hotsource.dto.Beacon;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;

@Service
public class BeaconServiceImple implements BeaconService{
	@Resource
	BeaconDao beaconDao;
	//페이징 X
	@Override
	public List<Beacon> getBeacons() {
		return beaconDao.selectAllBeacon();
	}
	//페이징 O
	@Override
	public List<Beacon> getBeacons(int start) {
		return beaconDao.selectAllBeacon(start, BeaconService.PAGING);
	}
	
	@Override
	public Beacon getBeacon(String uuid) {
		return beaconDao.selectBeacon(uuid);
	}

	@Override
	public Integer getBeaconCount() {
		return beaconDao.selectBeaconCount();
	}

	@Override
	public Integer addBeacon(Beacon beacon) {
		return beaconDao.insertBeacon(beacon);
	}

	@Override
	public Integer deleteBeacons(List<String> uuids) {
		return beaconDao.deleteBeacon(uuids);
	}

	@Override
	public int updateBeacon(Beacon beacon, String old_uuid) {
		return beaconDao.updateBeacon(beacon,old_uuid);
	}
}
