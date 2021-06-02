package kr.or.hotsource.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.BeaconDao;
import kr.or.hotsource.dto.Beacon;
import kr.or.hotsource.service.BeaconService;

@Service
public class BeaconServiceImple implements BeaconService{
	@Resource
	BeaconDao beaconDao;
	
	@Override
	public List<Beacon> getBeacons() {
		return beaconDao.selectAllBeacon();
	}

	@Override
	public Beacon getBeacon(String uuid) {
		return beaconDao.selectBeacon(uuid);
	}

	@Override
	public Integer getBeaconCount() {
		return beaconDao.selectBeaconCount();
	}

}
