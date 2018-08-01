package com.platform.service;

import com.platform.domain.UserVO;

public interface UserService {
	
	
	public UserVO login(UserVO vo) throws Exception;
	public void join(UserVO vo) throws Exception;
	
	public UserVO checkJoin(UserVO vo) throws Exception;
	
}
