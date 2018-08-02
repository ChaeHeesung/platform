package com.platform.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.platform.domain.AddressVO;
import com.platform.persistence.AddressDAO;

@Service
public class AddressServiceImpl implements AddressService{

	@Inject
	private AddressDAO dao;

	@Override
	public List<AddressVO> getSigungu(String sido_cd) {
		return dao.getSigungu(sido_cd);
	}

	@Override
	public List<AddressVO> getDong(String sigungu_cd) {
		return dao.getDong(sigungu_cd);
	}

	@Override
	public AddressVO selectDongCD(AddressVO vo) {
		return dao.selectDongCD(vo);
	}
}
