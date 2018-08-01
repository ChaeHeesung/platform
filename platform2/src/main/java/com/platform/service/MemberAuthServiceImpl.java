package com.platform.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import com.platform.domain.AuthDTO;
import com.platform.persistence.MemberAuthDAO;

@Service("memberAuthService")
public class MemberAuthServiceImpl implements MemberAuthService{
	protected Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private MemberAuthDAO memberAuthDAO;
	
	/**
	 * DB의 권한 테이블에서 해당 계정의 권한 목록을 조회합니다.
	 * [{1,'admin','관리자','Y',1,'ROLE_ADMIN','관리자에게 주어지는 최고권한 입니다. 관리자 이외 누구에게도 부여하지 마십시오.'},
	 * {1,'user','일반인','Y','2','ROLE_USER','회원에게 부여되는 권한 입니다. 일반적인 조회,삭제,수정 권한을 지니고 있습니다.'}]
	 * @param userNo 조회할 계정 일련 번호
	 * @return 해당 계정의 권한 목록
	 */
	public List<GrantedAuthority> loadUserAuthorities(Integer memNo){
		List<AuthDTO> list = null;
		try{
			list = memberAuthDAO.selectAuthOfMemberByMemNo(memNo);
		}catch(DataAccessException dae){
			logger.error("유저번호 {}의 권한 목록 조회를 실패했습니다.", memNo);
			dae.printStackTrace();
			return null;
		}
		
		List<GrantedAuthority> resultList = new ArrayList<GrantedAuthority>();
		System.out.println(list);
		for(AuthDTO vo : list){
			resultList.add( new SimpleGrantedAuthority(vo.getAuthority()) );
		}
		return resultList;
	}
}