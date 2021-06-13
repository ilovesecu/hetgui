package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Flash;

public interface FlashService {
	public static final Integer PAGING = 5; //페이지 당 보여질 개수
	public List<Flash> getFlashs();
	public List<Flash> getFlashs(int start);
	public Integer addFlash(Flash flash);
	public Integer updateFlash(Flash flash);
	public Integer deleteFlash(List<Integer>ids);
	public Flash getFlash(Integer id);
	public Integer getFlashCount(); //손전등의 총 개수를 반환한다.
	public List<Flash> getEmergencyFlash(); //비상상황(분리된 손전등)인 손전등을 가져온다.
}
