package kr.or.hotsource.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.or.hotsource.service.FlashService;

@Controller
public class MainController {
	@Autowired
	FlashService flashService;
	
	@RequestMapping(path="/main", method=RequestMethod.GET)
	public String main() {
		return "main";
	}
}
