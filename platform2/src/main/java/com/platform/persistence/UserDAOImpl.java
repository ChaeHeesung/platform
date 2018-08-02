package com.platform.persistence;

import java.util.HashMap;

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
	public void joinGroupMember(int user_sq, int group_id) throws Exception {
		HashMap<String, String> map = new HashMap<>();
		map.put("user_sq", String.valueOf(user_sq));
		map.put("group_id", String.valueOf(group_id));
		
		
		session.insert(namespace + ".joinGroupMember", map);
		
	}
	
	@Override
	public void joinAuthor(int user_sq, String authority) throws Exception {
		HashMap<String, Object> map = new HashMap<>();
		map.put("user_sq", user_sq);
		map.put("authority", authority);
		session.insert(namespace + ".joinAuthor", map);
	}

	@Override
	public UserVO checkJoin(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".checkJoin", vo);
	}




}
