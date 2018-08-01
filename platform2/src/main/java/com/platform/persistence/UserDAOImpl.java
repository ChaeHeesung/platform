package com.platform.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "com.platform.mapper.UserMapper";
	
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".login", vo);
	}

	@Override
	public void join(UserVO vo) throws Exception {
		session.insert(namespace + ".join", vo);
	}
	
	@Override
	public void joinGroupMember(int user_sq) throws Exception {
		session.insert(namespace + ".joinGroupMember", user_sq);
		
	}
	
	@Override
	public void joinAuthor(int user_sq) throws Exception {
		session.insert(namespace + ".joinAuthor", user_sq);
	}

	@Override
	public UserVO checkJoin(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".checkJoin", vo);
	}




}
