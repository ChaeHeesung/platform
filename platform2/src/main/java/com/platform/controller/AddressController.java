package com.platform.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.domain.UserVO;
import com.platform.service.AddressService;

@Controller
public class AddressController {
	
	@Inject
	AddressService service;
	
	@RequestMapping(value = "/getSigungu", method = RequestMethod.POST)
	public @ResponseBody List<String> getSigungu(String sido_cd) throws Exception {
		List<String> list = service.getSigungu(sido_cd);
		
		return list;
	}
	
}
