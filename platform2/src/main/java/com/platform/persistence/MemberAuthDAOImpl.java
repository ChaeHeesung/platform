package com.platform.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.domain.AuthDTO;

@Repository
public class MemberAuthDAOImpl implements MemberAuthDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "com.platform.mapper.MemberAuthMapper";
	
	@Override
	public List<AuthDTO> selectAuthOfMemberByMemNo(Integer memNo) {
		return session.selectList(namespace + ".selectAuthOfMemberByMemNo", memNo);
	}

}
