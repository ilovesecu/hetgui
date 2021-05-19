package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Flash;

public interface FlashService {
	public List<Flash> getFlashs();
	public Flash getFlash(Integer id);
	
}
