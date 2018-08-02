package com.platform.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dream")
public class AdminDreamController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index2() {
		return "dream/index";
	}
}
