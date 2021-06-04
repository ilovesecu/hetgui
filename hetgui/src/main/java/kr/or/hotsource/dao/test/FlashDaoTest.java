package kr.or.hotsource.dao.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.or.hotsource.config.ApplicationConfig;
import kr.or.hotsource.dao.FlashDao;
import kr.or.hotsource.dto.Flash;

public class FlashDaoTest {
	public static void main(String args[]) {
		ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		FlashDao flashDao = ac.getBean(FlashDao.class);
		/*Flash flash = new Flash();
		flash.setFirmware("test_firmware_v1");
		flash.setModel("test_model_1");
		flashDao.insertFlash(flash);*/
		
		//delete test
		List<Integer> ids = new ArrayList<>();
		ids.add(12);ids.add(13);
		int result=flashDao.deleteFlashes(ids);
		System.out.println(result);
	}
}
