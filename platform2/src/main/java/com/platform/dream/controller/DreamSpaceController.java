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
@RequestMapping("/space")
public class DreamSpaceController {
	
	private static final Logger logger = LoggerFactory.getLogger(DreamSpaceController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/spacewriteform", method = RequestMethod.GET)
	public String spaceBoardGET() {
		return "space/spaceWriteForm";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String spaceBoardDetail() {
		return "space/spaceDetail";
	}
	
}
