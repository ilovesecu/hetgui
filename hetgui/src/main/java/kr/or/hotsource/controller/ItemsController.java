package kr.or.hotsource.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.hotsource.dto.Beacon;
import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;

@Controller
@RequestMapping(path="/items")
public class ItemsController {
	@Resource
	FlashService flashService;
	@Resource
	BeaconService beaconService;
	
	@RequestMapping(path="/flashes", method=RequestMethod.GET)
	public String getFlases(ModelMap model) {
		List<Flash>flashes=flashService.getFlashs();
		model.addAttribute("flashes",flashes);
		return "flashes";
	}
	
	@RequestMapping(path="/beacons", method=RequestMethod.GET)
	public String getBeacons(ModelMap model) {
		List<Beacon>beacons = beaconService.getBeacons();
		model.addAttribute("beacons",beacons);
		return "beacons";
	}
}
