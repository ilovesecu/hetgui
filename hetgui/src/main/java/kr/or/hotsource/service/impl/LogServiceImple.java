package kr.or.hotsource.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.hotsource.dao.LogDao;
import kr.or.hotsource.dto.Log;
import kr.or.hotsource.service.LogService;

@Service
public class LogServiceImple implements LogService {
	@Resource
	LogDao logDao;
	
	@Override
	public List<Log> getLogs() {
		return logDao.selectAllLog();
	}

	@Override
	public int getCount() {
		return logDao.selectCount();
	}

	@Override
	public Integer addLog(Log log) {
		return logDao.insertLog(log);
	}

	@Override
	public Integer deleteLog(Integer id) {
		return logDao.deleteLog(id);
	}

}
