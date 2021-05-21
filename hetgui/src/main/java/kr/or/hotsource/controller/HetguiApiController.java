package kr.or.hotsource.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;

@RestController
@RequestMapping(path="/api")
public class HetguiApiController {
	@Autowired
	FlashService flashService;
	@Autowired
	BeaconService beaconService;
	
	@RequestMapping(path="/flashes", method=RequestMethod.GET)
	public Map<String,Object> getFlashes(){
		Map<String,Object>map = new HashMap<>();
		List<Flash> flashes=flashService.getFlashs();
		map.put("item", flashes);
		return map;
	}
}
