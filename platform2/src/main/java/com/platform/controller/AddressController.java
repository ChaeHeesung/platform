package com.platform.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.domain.AddressVO;
import com.platform.service.AddressService;

@Controller
public class AddressController {
	
	@Inject
	AddressService service;
	
	@RequestMapping(value = "/getSigungu", method = RequestMethod.POST)
	public @ResponseBody List<AddressVO> getSigungu(String sido_cd) throws Exception {
		List<AddressVO> list = service.getSigungu(sido_cd);
		
		return list;
	}
	
	@RequestMapping(value = "/getDong", method = RequestMethod.POST)
	public @ResponseBody List<AddressVO> getDong(String sigungu_cd) throws Exception {
		List<AddressVO> list = service.getDong(sigungu_cd);
		
		return list;
	}
	
	@RequestMapping(value = "/selectDongCD", method = RequestMethod.POST)
	public @ResponseBody AddressVO selectGuCode(String sigungu_nm, String dong_nm) throws Exception {
		AddressVO vo = new AddressVO();
		vo.setSigungu_nm(sigungu_nm);
		vo.setDong_nm(dong_nm);
		System.out.println(vo);
		AddressVO address = service.selectDongCD(vo);
		System.out.println(address);
		return address;
	}
	
}
