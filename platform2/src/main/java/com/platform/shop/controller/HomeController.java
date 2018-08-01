package com.platform.shop.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(  Model model) {
		return "home";
	}
	@RequestMapping(value = "/category/new", method = RequestMethod.GET)
	public String newPageGet(  Model model) {
		return "/category/new";
	}
	@RequestMapping(value = "/category/top", method = RequestMethod.GET)
	public String topPageGet(  Model model) {
		return "/category/top";
	}
	@RequestMapping(value = "/category/outer", method = RequestMethod.GET)
	public String outerPageGet(  Model model) {
		return "/category/outer";
	}
	@RequestMapping(value = "/category/pants", method = RequestMethod.GET)
	public String pantsPageGet(  Model model) {
		return "/category/pants";
	}
	@RequestMapping(value = "/category/skirt", method = RequestMethod.GET)
	public String skirtsPageGet(  Model model) {
		return "/category/skirt";
	}
	@RequestMapping(value = "/category/bag", method = RequestMethod.GET)
	public String bagPageGet(  Model model) {
		return "/category/bag";
	}
	@RequestMapping(value = "/category/shoes", method = RequestMethod.GET)
	public String shoesPageGet(  Model model) {
		return "/category/shoes";
	}
	@RequestMapping(value = "/category/etc", method = RequestMethod.GET)
	public String etcPageGet(  Model model) {
		return "/category/etc";
	}
	@RequestMapping(value = "/category/sale", method = RequestMethod.GET)
	public String salePageGet(  Model model) {
		return "/category/sale";
	}
	@RequestMapping(value = "/category/bycalllim", method = RequestMethod.GET)
	public String bycalllimPageGet(  Model model) {
		return "/category/bycalllim";
	}
	@RequestMapping(value = "/category/newitem", method = RequestMethod.GET)
	public String newitemPageGet(  Model model) {
		return "/category/newitem";
	}
	@RequestMapping(value = "/category/bestitem", method = RequestMethod.GET)
	public String bestitemPageGet(  Model model) {
		return "/category/bestitem";
	}
	@RequestMapping(value = "/category/notice", method = RequestMethod.GET)
	public String noticePageGet(  Model model) {
		return "/category/notice";
	}
	@RequestMapping(value = "/category/qna", method = RequestMethod.GET)
	public String qnaPageGet(  Model model) {
		return "/category/qna";
	}
	@RequestMapping(value = "/category/review", method = RequestMethod.GET)
	public String reviewPageGet(  Model model) {
		return "/category/review";
	}
	@RequestMapping(value = "/category/search", method = RequestMethod.GET)
	public String searchPageGet(HttpServletRequest request) {
		String keyword=request.getParameter("keyword");
		System.out.println(keyword);
		return "/category/search";
	}
}
