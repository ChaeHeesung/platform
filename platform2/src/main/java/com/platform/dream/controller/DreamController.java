package com.platform.dream.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DreamController {
	
	private static final Logger logger = LoggerFactory.getLogger(DreamController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/art", method = RequestMethod.GET)
	public String artBoardGET() {
		return "art/artBoard";
	}
	
	@RequestMapping(value = "/space", method = RequestMethod.GET)
	public String spaceBoardGET() {
		return "space/spaceBoard";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "test";
	}
	


	
}
