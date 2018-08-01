package com.platform.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.eclipse.core.runtime.Platform;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.preauth.AbstractPreAuthenticatedProcessingFilter;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.platform.service.PlatformUtil;

@Controller
public class SecurityController {
	
	
	@RequestMapping(value = "/loginSecurity", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "security/loginForm";
	}
	
	@RequestMapping(value = "/admin/test", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		return "security/adminHome";
	}
	
	@RequestMapping(value = "/loginDeny", method = RequestMethod.GET)
	public String loginDeny(Locale locale, Model model) {
		return "security/deny";
	}
	
	@RequestMapping(value = "/securitySession", method=RequestMethod.GET)
	public String testSecuritySession(HttpSession session) {
		
		SecurityContext securityContext= (SecurityContext) session.getAttribute("SPRING_SECURITY_CONTEXT");
		System.out.println(securityContext.getAuthentication().getName());
		System.out.println(securityContext.getAuthentication().getPrincipal());
		System.out.println(securityContext.getAuthentication().getDetails());
		return "security/deny";
	}
	
	@RequestMapping(value = "/logined.do", method=RequestMethod.GET)
	public String checkLoginUrl(HttpSession session, HttpServletRequest request) {
		String url = PlatformUtil.getInstance().beforePage(request);
		
		return url;
	}

	@RequestMapping(value = "/loginform.do", method=RequestMethod.GET)
	public String checkLogin(HttpSession session, HttpServletRequest request) {
		String url = PlatformUtil.getInstance().loginForm(request);
		return url;
	}	
	
	@RequestMapping(value = "/checkRegister.do", method=RequestMethod.GET)
	public String checkRegistered(HttpSession session, HttpServletRequest request) {
		
		String platName = request.getHeader("referer");
		String urls[] = null;
		try {
			
			urls = platName.split("/");
			
		} catch (Exception e) {
			return "redirect:/";
		}
		if(urls[3] == null) {
			return "redirect:/";
		}
		
		String url = "";
		for (String string : urls) {
			url.concat(string + "/");
		}
		if(urls[3].equals("dream")) {
			return "dream/user/join";
		}
		
		return "redirect:/" + url;
		
		
	}
	
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String url = PlatformUtil.getInstance().beforePage(request);
		return url;
	}

}
