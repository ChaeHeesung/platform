package com.platform.persistence;

import com.platform.domain.UserVO;

public interface UserDAO {
	
	public UserVO login(UserVO vo) throws Exception;
	
	public void join(UserVO vo) throws Exception;
	
	public void joinAuthor(int user_sq) throws Exception;
	
	public void joinGroupMember(int user_sq) throws Exception;
	
	public UserVO checkJoin(UserVO vo) throws Exception;
	
}
