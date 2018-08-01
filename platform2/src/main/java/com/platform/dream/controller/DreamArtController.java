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
@RequestMapping("/artboard")
public class DreamArtController {
	
	private static final Logger logger = LoggerFactory.getLogger(DreamArtController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/artdetail", method = RequestMethod.GET)
	public String artDetail() {
		return "art/artDetail";
		
	}
	
	@RequestMapping(value = "/artwriteform", method = RequestMethod.GET)
	public String artWriteForm() {
		return "write/artWriteForm";
		
	}
	
}
