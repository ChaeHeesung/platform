package com.platform.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.platform.domain.UserVO;
import com.platform.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDAO dao;
	
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return dao.login(vo);
	}

	@Transactional
	@Override
	public void join(UserVO vo) throws Exception {
		dao.join(vo);
		UserVO user = dao.checkJoin(vo);
		dao.joinAuthor(user.getNo());
		dao.joinGroupMember(user.getNo());
	}

	@Override
	public UserVO checkJoin(UserVO vo) throws Exception {
		return dao.checkJoin(vo);
	}
	
	
	
	
}
