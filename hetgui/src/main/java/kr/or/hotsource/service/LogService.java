package kr.or.hotsource.service;

import java.util.List;

import kr.or.hotsource.dto.Log;

public interface LogService {
	public List<Log> getLogs();
	public int getCount();
	public Log addLog(Log log, String ip);
	public int deleteLog(Integer id, String ip);
}
