package com.platform.dream.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.dream.util.MapUtil;

@Controller
public class DreamMapController {
	
	@RequestMapping(value = "/jusopopup", method = RequestMethod.GET)
	public String jusoPopup() {
		return "include/jusoPopup";
	}
	
	@RequestMapping(value = "/jusopopup", method = RequestMethod.POST)
	public String jusoPopupPOST() {
		return "include/jusoPopup";
	}
	
	@RequestMapping(value = "/getcoordinates", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> getCoordinates(String address) {
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "application/json;charset=UTF-8");

		StringBuffer stringBuffer = MapUtil.getCoordinates(address);
		return new ResponseEntity<String>(stringBuffer.toString(), resHeaders, HttpStatus.CREATED);
		
	}

}
