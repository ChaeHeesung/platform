package com.platform.sports.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping("/main")
	public String main() {
		
		return "index";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/icons")
	public String icon() {
		return "icons";
	}
	
	@RequestMapping("/portfolio")
	public String portfolio() {
		return "portfolio";
	}
	
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	
	@RequestMapping("/typography")
	public String typography() {
		return "typography";
	}
	
	@RequestMapping("/schedule")
	public String schedule() {
		return "schedule";
	}
	
	@RequestMapping("/player_info")
	public String player_info() {
		return "player_info";
	}
	
	@RequestMapping("/pitching_Record")
	public String pitching_Record() {
		return "pitching_Record";
	}
	
	@RequestMapping("/hitting_Record")
	public String hitting_Record() {
		return "hitting_Record";
	}
}
