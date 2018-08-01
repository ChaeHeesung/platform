package com.platform.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.domain.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "com.platform.mapper.MemberMapper";
	
	@Override
	public MemberDTO getMemberInfoById(String id) {
		return session.selectOne(namespace + ".getMemberInfoById", id);
	}

	
}
