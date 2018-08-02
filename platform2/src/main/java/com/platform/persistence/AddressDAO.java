package com.platform.persistence;

import java.util.List;

import com.platform.domain.AddressVO;

public interface AddressDAO {
	
	public List<AddressVO> getSigungu(String sido_cd);
	
	public List<AddressVO> getDong(String sigungu_cd);
	
	public AddressVO selectDongCD(AddressVO vo);
}
