package kr.or.hotsource.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;

@Controller
@RequestMapping(path="/items")
public class ItemsController {
	@Resource
	FlashService flashService;
	@Resource
	BeaconService beaconService;
	
	@RequestMapping(path="/beacons", method=RequestMethod.GET)
	public String getBeacons() {
		return "items";
	}
	@RequestMapping(path="/flashes", method=RequestMethod.GET)
	public String getFlases() {
		return "items";
	}
}
