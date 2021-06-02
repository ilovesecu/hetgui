package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Flash;

public interface FlashService {
	public List<Flash> getFlashs();
	public Flash getFlash(Integer id);
	public Integer getFlashCount(); //손전등의 총 개수를 반환한다.
	
}
