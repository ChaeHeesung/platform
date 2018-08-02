package com.platform.dream.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.domain.UserVO;
import com.platform.dream.domain.ArtUserVO;
import com.platform.dream.domain.SpaceUserVO;
import com.platform.dream.service.DreamUserService;
import com.platform.service.AlertService;
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
	
	@Inject
	DreamUserService dreamUserService;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGET() {
		return "user/join";
	}
	
	@RequestMapping(value = "/artjoinform", method = RequestMethod.GET)
	public String artJoinFormGET() {
		return "user/artJoinForm";
	}
	
	@RequestMapping(value = "/spacejoinform", method = RequestMethod.GET)
	public String spaceJoinFormGET() {
		return "user/spaceJoinForm";
	}
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public @ResponseBody boolean checkLogin(UserVO vo) throws Exception {
		UserVO user = userService.login(vo);
		if (user != null) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value = "/artjoin", method = RequestMethod.POST)
	public String artJoinPOST(ArtUserVO vo, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		
		if(session.getAttribute("SPRING_SECURITY_CONTEXT") != null) {
			try {
				dreamUserService.artJoin(vo, true);
				request.setAttribute("user", vo);
				session.invalidate();
				AlertService.htmlPrint(response, "회원가입이 완료되었습니다. 다시 로그인해주세요", "/dream/#login_form");
				return null;
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				dreamUserService.artJoin(vo, false);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return "redirect:/dream/";
	}
	
	
	@RequestMapping(value = "/spacejoin", method = RequestMethod.POST)
	public String spaceJoinPOST(SpaceUserVO vo, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println(vo);
		if(session.getAttribute("SPRING_SECURITY_CONTEXT") != null) {
			try {
				dreamUserService.spaceJoin(vo, true);
				request.setAttribute("user", vo);
				session.invalidate();
				AlertService.htmlPrint(response, "회원가입이 완료되었습니다. 다시 로그인해주세요", "/dream/#login_form");
				return null;
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				dreamUserService.spaceJoin(vo, false);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return "redirect:/dream/";
	}
	
	
	
	@RequestMapping(value = "/securityLogin", method = RequestMethod.GET)
	public String securityLogin(HttpServletRequest request) {
		ArtUserVO vo = (ArtUserVO) request.getAttribute("user");
		System.out.println(vo);
		return "securityLogin";
	}	
	
	
	
	
	
}
