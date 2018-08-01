package com.platform.dream.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.domain.UserVO;
import com.platform.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/user")
public class DreamUserController {
	
	private static final Logger logger = LoggerFactory.getLogger(DreamUserController.class);
	
	@Inject
	UserService userService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String registerGET() {
		return "user/join";
	}
	
	@RequestMapping(value = "/artjoinform", method = RequestMethod.GET)
	public String artRegisterFormGET() {
		return "user/artJoinForm";
	}
	
	@RequestMapping(value = "/spacejoinform", method = RequestMethod.GET)
	public String spaceRegisterFormGET() {
		return "user/spaceJoinForm";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginPOST() {
		return null;
	}
	
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public @ResponseBody boolean checkLogin(UserVO vo) throws Exception {
		UserVO user = userService.login(vo);
		if (user != null) {
			return true;
		}
		return false;
	}
	
	
}
