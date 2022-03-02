package com.example.pion.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class MainController {

	@GetMapping("/main")
	public @ResponseBody String testMapping() {
		log.info("========================== Init Main ==========================");
		
		return "main test";
	}
}
