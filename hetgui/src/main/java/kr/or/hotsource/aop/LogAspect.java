package kr.or.hotsource.aop;

import java.lang.reflect.Method;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.or.hotsource.dto.Location;
import kr.or.hotsource.dto.Log;
import kr.or.hotsource.service.LogService;
import kr.or.hotsource.utils.Util;

@Aspect
@Component
public class LogAspect {
	@Resource
	LogService logService;
	Logger logger = LoggerFactory.getLogger(LogAspect.class);
	
	@AfterReturning("@annotation(kr.or.hotsource.annotation.PostLogDatabase)")
	public void postLogDatabase(JoinPoint joinPoint) {
		logger.info("로그 확인");
		/*
		String parameterName;
		Object[] parameterValues = joinPoint.getArgs(); 
		Location location=null;
		Log log = null;
		
		MethodSignature signature = (MethodSignature)joinPoint.getSignature();
		Method method = signature.getMethod();
		for(int i=0; i<method.getParameters().length; i++) {
			parameterName = method.getParameters()[i].getName();
			if(parameterName.equals("location")) {
				location = (Location)parameterValues[i];
				log = getLog(location);
				break;
			}
		}
		if(location==null) {
			log = getLog();
		}
		
		int logId=logService.addLog(log);
		System.out.println(logId+"를 입력하였습니다.");
		*/
	}
	//GET IP
	private String getIpAddr() {
		HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		String ip = req.getHeader("X-FORWARDED-FOR");
		if (ip == null)
			ip = req.getRemoteAddr();
		return ip;
	}
	private Log getLog() {
		Log log = new Log();
		log.setIp(getIpAddr());
		log.setMethod("POST");
		log.setTime(Util.getTimeStampStr());
		return log;
	}
	private Log getLog(Location location) {
		Log log = new Log();
		log.setIp(location.getClientIp());
		log.setMethod("location");
		log.setTime(location.getTime());
		return log;
	}
	
}
