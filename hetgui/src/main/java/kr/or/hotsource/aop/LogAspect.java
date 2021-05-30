package kr.or.hotsource.aop;

import java.lang.reflect.Method;

import javax.annotation.Resource;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	@AfterReturning(value = "execution(* locationForForm(..))")
	public void writeSuccessLog(JoinPoint joinPoint) {
		Object[] parameterValues = joinPoint.getArgs(); 
		Location location = (Location)parameterValues[0];
		Log log = getLog(location);
		System.out.println("location"+location);
		System.out.println("log"+log);
		int logId=logService.addLog(log);
		logger.info("ID:"+logId+"를 입력하였습니다.");
	}
	@AfterReturning(value = "execution(* getFlashes(..))")
	public void writeSuccessLogWithoutParam(JoinPoint joinPoint) {
		Log log = getLog();
		int logId=logService.addLog(log);
		logger.info("ID:"+logId+"를 입력하였습니다.");
	}
	
	
	//@AfterThrowing(value = "execution(* kr.or.hotsource.controller.HetguiApiController.*(..))", throwing = "exception")
	public void writeFailLog(Joinpoint joinPoint, Exception exception) {
		
	}
	
	@AfterReturning("@annotation(kr.or.hotsource.annotation.Logging)")
	public void postLogDatabase(JoinPoint joinPoint) {
		logger.info("메서드에 대한 응답이 완료되었습니다.");
	}
	
	//Log객체를 생성하여 반환한다.
	private Log getLog() {
		Log log = new Log();
		log.setIp(Util.getIpAddr(
				((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest())
		);
		log.setMethod("get");
		log.setTime(Util.getTimeStampStr());
		return log;
	}
	//Location DTO를 기반으로 Log객체를 생성하여 반환한다.
	private Log getLog(Location location) {
		Log log = new Log();
		log.setIp(location.getClientIp());
		log.setMethod("location");
		if(location.getTime()!=null)log.setTime(location.getTime());
		else log.setTime(Util.getTimeStampStr());
		return log;
	}
	
}
