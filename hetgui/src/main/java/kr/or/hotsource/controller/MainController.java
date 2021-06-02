package kr.or.hotsource.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.hotsource.dto.Flash;
import kr.or.hotsource.service.BeaconService;
import kr.or.hotsource.service.FlashService;

@Controller
public class MainController {
	@Resource
	FlashService flashService;
	@Resource
	BeaconService beaconService;
	
	@RequestMapping(path="/main", method=RequestMethod.GET)
	public String main(ModelMap model) {
		int flashCount = flashService.getFlashCount();
		int beaconCount = beaconService.getBeaconCount();
		model.addAttribute("flashCount",flashCount);
		model.addAttribute("beaconCount",beaconCount);
		
		return "main";
	}
}
