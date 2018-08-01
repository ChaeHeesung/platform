package com.platform.safety.controller;

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

	@RequestMapping(value = "/wt_main", method = RequestMethod.GET)
	public String wt_main(Model model) {
		return "watchtrip_main";
	}

	@RequestMapping(value = "/wt_about", method = RequestMethod.GET)
	public String wt_about(Model model) {
		return "watchtrip_about";
	}

	@RequestMapping(value = "/wt_map", method = RequestMethod.GET)
	public String wt_map(Model model) {
		return "watchtrip_map";
	}

	@RequestMapping(value = "/wt_listArticle", method = RequestMethod.GET)
	public String wt_listArticle(Model model) {
		return "watchtrip_listArticle";
	}
}
