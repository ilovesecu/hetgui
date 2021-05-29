package kr.or.hotsource.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.or.hotsource.annotation.GetLogDatabase;
import kr.or.hotsource.annotation.PostLogDatabase;
import kr.or.hotsource.dao.LocationDao;
import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.dto.Location;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;
import kr.or.hotsource.service.LocationService;

@RestController
@RequestMapping(path="/api")
public class HetguiApiController {
	@Resource
	FlashService flashService;
	@Resource
	BeaconService beaconService;
	@Resource
	LocationService locationService;
	
	@GetLogDatabase
	@RequestMapping(path="/flashes", method=RequestMethod.GET)
	public Map<String,Object> getFlashes(){
		Map<String,Object>map = new HashMap<>();
		List<Flash> flashes=flashService.getFlashs();
		System.out.println(flashes);
		map.put("item", flashes);
		return map;
	}
	
	@PostLogDatabase
	@RequestMapping(path="/location", method=RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public Map<String,Object> location(@RequestBody Location location){
		Map<String,Object>map = new HashMap<>();
		String userLocation=locationService.recvLocation(location);
		System.out.println(userLocation);
		map.put("status", "success");
		map.put("location",userLocation); //인코딩 필요
		return map;
	}
	
	@PostLogDatabase
	@RequestMapping(path="/location", method=RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public Map<String,Object> locationForForm(Location location){
		Map<String,Object>map = new HashMap<>();
		String userLocation=locationService.recvLocation(location);
		location.setClientIp(getIpAddr());
		System.out.println(userLocation);		
		map.put("status", "success");
		map.put("location",userLocation); //인코딩 필요
		return map;
	}
	
	//GET IP
	private String getIpAddr() {
		HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		String ip = req.getHeader("X-FORWARDED-FOR");
		if (ip == null)
			ip = req.getRemoteAddr();
		return ip;
	}
}
