package com.platform.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.admin.service.StaticsService;

@Controller
@RequestMapping("/dream")
public class AdminDreamController {
	
	@Inject
	StaticsService staticsService;	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "dream/index";
	}
	
	
	@RequestMapping(value = "/getArtJoin", method = RequestMethod.GET)
	public @ResponseBody String getArtJoin() {
		String num = staticsService.getArtJoin();
		return num;
	}
	
	@RequestMapping(value = "/getSpaceJoin", method = RequestMethod.GET)
	public @ResponseBody String getSpaceJoin() {
		String num = staticsService.getSpaceJoin();
		return num;
	}
	
	@RequestMapping(value = "/getJoinStatic", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> getJoinStatic() {
		List<HashMap<String, Object>> list = staticsService.listStatsJoinUser();
		return list;
	}
}
