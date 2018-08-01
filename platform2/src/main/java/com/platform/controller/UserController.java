package com.platform.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.domain.UserVO;
import com.platform.service.AlertService;
import com.platform.service.UserService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@Inject
	UserService service;
	
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String login(UserVO vo, HttpServletResponse response, HttpSession session) throws Exception {
//		UserVO user = service.login(vo);
//		if(user != null) {
//			user.setUpw(null);
//			session.setAttribute("loginId", user);
//			return "index";
//		}
//		AlertService.htmlPrint(response, "아이디 또는 비밀번호가 틀립니다.", "index");
//		return null;
//	}
//	
//	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
//	public @ResponseBody boolean checkLogin(String user_id, String user_pw) throws Exception {
//		System.out.println("checkLogin");
//		System.out.println(user_id);
//		System.out.println(user_pw);
//		UserVO vo = new UserVO(user_id, user_pw);
//		UserVO user = service.login(vo);
//		if (user != null) {
//			return true;
//		}
//		return false;
//	}
//	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public @ResponseBody boolean checkLogin(UserVO vo) throws Exception {
		UserVO user = service.login(vo);
		if (user != null) {
			return true;
		}
		return false;
	}
	
//	
//	@RequestMapping(value = "/logout", method = RequestMethod.GET)
//	public String login(HttpSession session) throws Exception {
//		session.removeAttribute("loginId");
//		return "index";
//	}
	
	@RequestMapping(value = "/checkJoin", method = RequestMethod.POST)
	public @ResponseBody boolean checkJoin(UserVO vo) throws Exception {
		UserVO user = service.checkJoin(vo);
		if (user == null) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value = "/userjoin", method = RequestMethod.POST)
	public String userJoin(UserVO vo, HttpServletResponse response) throws Exception {
		
		UserVO user = service.checkJoin(vo);
		if(user == null) {
			service.join(vo);
			return "index";
		}
		AlertService.htmlPrint(response, "아이디가 중복됩니다.", "/");
		return null;
	}

	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userJoin() throws Exception {
		
		return "index";
	}
	
}
