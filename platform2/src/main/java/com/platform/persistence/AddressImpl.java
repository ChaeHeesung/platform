package com.platform.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AddressImpl implements AddressDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.platform.mapper.AddressMapper";
	
	@Override
	public List<String> getSigungu(String sido_cd) {
		return session.selectList(namespace + ".getSigungu", sido_cd);
	}
	
	
	
	
}
