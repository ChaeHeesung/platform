package com.platform.persistence;

import java.util.List;

import com.platform.domain.AuthDTO;

public interface MemberAuthDAO {

	/**
	 * 해당 유저 일련 번호가 소유한 권한 목록을 반환합니다.
	 * @param memNo
	 * @return
	 */
	public abstract List<AuthDTO> selectAuthOfMemberByMemNo(Integer memNo);
}