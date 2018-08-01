package com.platform.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.platform.persistence.AddressDAO;
import com.platform.persistence.UserDAO;

@Service
public class AddressServiceImpl implements AddressService{

	@Inject
	private AddressDAO dao;

	@Override
	public List<String> getSigungu(String sido_cd) {
		List<String> list = dao.getSigungu(sido_cd);
		return list;
	}
}
