package kr.or.hotsource.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.FlashDao;
import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.service.FlashService;
@Service
public class FlashServiceImple implements FlashService {
	@Autowired
	FlashDao flashDao;
	
	@Override
	public List<Flash> getFlashs() {
		return flashDao.selectAllFlash();
	}

	@Override
	public Flash getFlash(Integer id) {
		return flashDao.selectFlash(id);
	}

}
