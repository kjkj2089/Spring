package com.example.pion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@GetMapping("/main")
	public @ResponseBody String testMapping() {
		log.info("========================== Init Main ==========================");
		
		return "main test";
	}
	
	@RequestMapping("/main/frameTop.do")
	public String 프레임탑() {
		return "main/frameTop";
	}
	
	
	  @RequestMapping("/main/LeftMenu.do")
	 public String 왼쪽메뉴() {
		  return "main/LeftMenu";
	  }
	  
	  @RequestMapping("/main/Welcome.do")
	 public String 프레임바디() {
		  return "main/Welcome";
	  }
	 
}
