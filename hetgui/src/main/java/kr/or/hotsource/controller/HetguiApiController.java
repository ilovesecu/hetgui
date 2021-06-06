package kr.or.hotsource.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.or.hotsource.annotation.Logging;
import kr.or.hotsource.aop.LogAspect;
import kr.or.hotsource.dao.LocationDao;
import kr.or.hotsource.dto.Beacon;
import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.dto.Location;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;
import kr.or.hotsource.service.LocationService;
import kr.or.hotsource.utils.Util;

@RestController
@RequestMapping(path="/api")
public class HetguiApiController {
	@Resource
	FlashService flashService;
	@Resource
	BeaconService beaconService;
	@Resource
	LocationService locationService;
	Logger logger = LoggerFactory.getLogger(HetguiApiController.class); 
	
	//전체 손전등 정보 전송
	@Logging
	@RequestMapping(path="/flashes", method=RequestMethod.GET)
	public Map<String,Object> getFlashes(){
		Map<String,Object>map = new HashMap<>();
		List<Flash> flashes=flashService.getFlashs();
		logger.info("flashes:"+flashes);
		map.put("status", "success");
		map.put("item", flashes);
		return map;
	}
	//특정 손전등에 대한 정보 전송
	@RequestMapping(path="/flashes/{id}", method=RequestMethod.GET)
	public Map<String,Object> getFlashes(@PathVariable(name="id")int id){
		Map<String,Object>map = new HashMap<>();
		logger.info("id:"+id);
		Flash flash = flashService.getFlash(id);
		logger.info("flash:"+flash);
		map.put("status", "success");
		map.put("item", flash);
		return map;
	}
	
	//손전등 추가
	@RequestMapping(path="/flashes", method=RequestMethod.POST)
	public Integer addFlash(@RequestBody Flash flash) {
		return flashService.addFlash(flash);
	}
	
	//손전등 수정
	@RequestMapping(path="/flashes/{id}", method=RequestMethod.PUT)
	public Integer updateFlash(@PathVariable(name="id")int id,@RequestBody Flash flash) {
		logger.info("flash:"+flash);
		return flashService.updateFlash(flash);
	}
	
	//손전등 삭제
	@RequestMapping(path="/flashes", method=RequestMethod.DELETE)
	public int deleteFlash(@RequestBody String params) {
		logger.info("ids:"+params);
		List<Integer> ids = new ArrayList<>();
		String[] paramArray=params.split(",");
		for(int i=0; i<paramArray.length; i++) {
			ids.add(Integer.parseInt(paramArray[i]));
		}
		return flashService.deleteFlash(ids);
	}
	
	//전체 비콘 정보 전송
	@RequestMapping(path="/beacons", method=RequestMethod.GET)
	public Map<String,Object> getBeacons(){
		Map<String,Object>map = new HashMap<>();
		List<Beacon> beacons=beaconService.getBeacons();
		logger.info("beacons:"+beacons);
		map.put("status", "success");
		map.put("item", beacons);
		return map;
	}
	//특정 비콘 정보 전송
	@RequestMapping(path="/beacons/{uuid}", method=RequestMethod.GET)
	public Map<String,Object> getFlashes(@PathVariable(name="uuid")String uuid){
		Map<String,Object>map = new HashMap<>();
		logger.info("uuid:"+uuid);
		Beacon beacon = beaconService.getBeacon(uuid);
		logger.info("beacon:"+beacon);
		map.put("status", "success");
		map.put("item", beacon);
		return map;
	}
	//비콘 생성
	@RequestMapping(path="/beacons",method=RequestMethod.POST)
	public Integer addBeacon(@RequestBody Beacon beacon) {
		return beaconService.addBeacon(beacon);
	}
	//비콘 수정
	@RequestMapping(path="/beacons/{uuid}", method=RequestMethod.PUT)
	public Integer updateFlash(@PathVariable(name="uuid")String uuid,@RequestBody Beacon beacon) {
		logger.info("beacon:"+beacon);
		return beaconService.updateBeacon(beacon,uuid);
	}
	//비콘 삭제
	@RequestMapping(path="/beacons", method=RequestMethod.DELETE)
	public Integer deleteBeacon(@RequestBody String params) {
		logger.info("ids:"+params);
		List<String> uuids= new ArrayList<>();
		String[] paramArray=params.split(",");
		for(int i=0; i<paramArray.length; i++) {
			uuids.add(paramArray[i]);
		}
		return beaconService.deleteBeacons(uuids);
	}
	
	@Logging
	@RequestMapping(path="/location", method=RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public Map<String,Object> location(@RequestBody Location location){
		Map<String,Object>map = new HashMap<>();
		String userLocation=locationService.recvLocation(location);
		map.put("status", "success");
		System.out.println(userLocation);
		return map;
	}
	
	@Logging
	@RequestMapping(path="/location", method=RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public Map<String,Object> locationForForm(Location location){
		Map<String,Object>map = new HashMap<>();
		location.setClientIp(Util.getIpAddr(
				((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest()
		));
		String userLocation=locationService.recvLocation(location);
		//System.out.println(location);
		//System.out.println(userLocation);
		map.put("status", "success");
		return map;
	}
	
}
