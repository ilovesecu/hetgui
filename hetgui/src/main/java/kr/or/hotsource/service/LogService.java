package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Log;

public interface LogService {
	public static final int LIMIT = 20; //만약 페이징 해야할 일이 있다면 해당 원소값을 참조
	public List<Log> getLogs();
	public int getCount();
	public Integer addLog(Log log);
	public Integer deleteLog(Integer id);
}
