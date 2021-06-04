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
	
	@Override
	public Integer getFlashCount() {
		return flashDao.selectFlashCount();
	}
	
	//손전등 추가
	@Override
	public Integer addFlash(Flash flash) {
		return flashDao.insertFlash(flash);
	}
	//손전등 삭제
	@Override
	public Integer deleteFlash(List<Integer> ids) {
		return flashDao.deleteFlashes(ids);
	}
	//손전등 수정
	@Override
	public Integer updateFlash(Flash flash) {
		return flashDao.updateFlash(flash);
	}

}
