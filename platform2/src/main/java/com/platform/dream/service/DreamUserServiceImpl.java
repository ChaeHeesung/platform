package com.platform.dream.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.platform.domain.UserVO;
import com.platform.dream.domain.ArtUserVO;
import com.platform.dream.domain.SpaceUserVO;
import com.platform.dream.persistence.DreamUserDAO;
import com.platform.persistence.UserDAO;
import com.platform.service.UserService;

@Service
public class DreamUserServiceImpl implements DreamUserService {

	@Inject
	DreamUserDAO dreamUserDAO;

	@Inject
	UserService userService;

	@Inject
	UserDAO userDAO;

	@Transactional
	@Override
	public void artJoin(ArtUserVO vo, boolean checkJoin) throws Exception {
		// 기본 가입
		
		if (checkJoin == false) {
			userDAO.join(vo);
		}
		
		UserVO user = userDAO.checkJoin(vo);
		
		if (checkJoin == false) {
			userDAO.joinAuthor(user.getNo(), "ROLE_USER");
			userDAO.joinGroupMember(user.getNo(), 1);
		}
		// 드림 가입
		vo.setNo(user.getNo());
		System.out.println(vo);
		dreamUserDAO.artJoin(vo);
		userDAO.joinAuthor(user.getNo(), "ROLE_ARTDREAM");
		userDAO.joinGroupMember(user.getNo(), 3);
		artMajorJoin(user.getNo(), vo.getArtField());

	}

	@Override
	public void artMajorJoin(int userNo, int... artField) throws Exception {

		for (int i : artField) {
			dreamUserDAO.artMajorJoin(userNo, i);
		}
	}
	
	@Transactional
	@Override
	public void spaceJoin(SpaceUserVO vo, boolean checkJoin) throws Exception {
		
		if (checkJoin == false) {
			userDAO.join(vo);
		}
		
		UserVO user = userDAO.checkJoin(vo);
		
		if (checkJoin == false) {
			userDAO.joinAuthor(user.getNo(), "ROLE_USER");
			userDAO.joinGroupMember(user.getNo(), 1);
		}
		// 드림 가입
		vo.setNo(user.getNo());
		System.out.println(vo);
		dreamUserDAO.spaceJoin(vo);
		userDAO.joinAuthor(user.getNo(), "ROLE_SPACEDREAM");
		userDAO.joinGroupMember(user.getNo(), 4);
		artWish(user.getNo(), vo.getArtField());
		
	}

	@Override
	public void artWish(int userNo, int... artField) throws Exception {
		for (int i : artField) {
			dreamUserDAO.artWish(userNo, i);
		}
	}
}
