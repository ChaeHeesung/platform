package com.platform.service;

import javax.servlet.http.HttpServletRequest;

public class PlatformUtil {

	private static PlatformUtil uniqueInstance = new PlatformUtil();

	private PlatformUtil() {
	}

	public static synchronized PlatformUtil getInstance() {
		return uniqueInstance;
	}

	public String beforePage(HttpServletRequest request) {
		
		if(request.getHeader("referer") == null) {
			return "redirect:/";
		}
		
		
		String platName = request.getHeader("referer");
		String urls[] = platName.split("/");
		
		try {
			if(urls[3] == null) {
				return "redirect:/";
			}
		} catch (Exception e) {
			return "redirect:/";
		}
		
		String url = "";
		
		for(int i = 3; i < urls.length; i++) {
			url = url.concat(urls[i] + "/");
		}
		
		if(urls[3].equals("dream")) {
			
		}
		
		return "redirect:/" + url;
	}

	public String loginForm(HttpServletRequest request) {
		
		if(request.getHeader("referer") == null) {
			return "redirect:/#login_form";
		}
		
		
		String platName = request.getHeader("referer");
		String urls[] = platName.split("/");
		
		try {
			if(urls[3] == null) {
				return "redirect:/#login_form";
			}
		} catch (Exception e) {
			return "redirect:/#login_form";
		}
		
		String url = "";
		
		for(int i = 3; i < urls.length; i++) {
			url = url.concat(urls[i] + "/");
		}
		if(urls[3].equals("dream")) {
			return "redirect:/" + url.substring(0, url.length() -1) + "#login_form";
		}
		return "redirect:/" + url.substring(url.length() -1) + "#login_form";
	}
}
