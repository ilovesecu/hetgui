package kr.or.hotsource.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String getFlases(@RequestParam(name="page", required=false, defaultValue="1")int page, ModelMap model) {
		int start = (page-1) * FlashService.PAGING;
		List<Flash>flashes=flashService.getFlashs(start);
		int totalCount = flashService.getFlashCount();
		int lastPage = (int)Math.ceil(((double)totalCount/FlashService.PAGING)); //double로 형변환을 해야 소수점이 발생하여 정상적인 값이 출력
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("page",page);
		model.addAttribute("flashes",flashes);
		return "flashes";
	}
	
	@RequestMapping(path="/beacons", method=RequestMethod.GET)
	public String getBeacons(@RequestParam(name="page", required=false, defaultValue="1")int page, ModelMap model) {
		int start = (page-1) * BeaconService.PAGING;
		List<Beacon>beacons = beaconService.getBeacons(start);
		int totalCount = beaconService.getBeaconCount();
		int lastPage = (int)Math.ceil(((double)totalCount/BeaconService.PAGING)); //double로 형변환을 해야 소수점이 발생하여 정상적인 값이 출력
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("page",page);
		model.addAttribute("beacons",beacons);
		return "beacons";
	}
}
