package com.platform.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.domain.AddressVO;

@Repository
public class AddressImpl implements AddressDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.platform.mapper.AddressMapper";
	
	@Override
	public List<AddressVO> getSigungu(String sido_cd) {
		return session.selectList(namespace + ".getSigungu", sido_cd);
	}

	@Override
	public List<AddressVO> getDong(String sigungu_cd) {
		return session.selectList(namespace + ".getDong", sigungu_cd);
	}

	@Override
	public AddressVO selectDongCD(AddressVO vo) {
		return session.selectOne(namespace + ".selectDongCD", vo);
	}
	
	
	
	
}
