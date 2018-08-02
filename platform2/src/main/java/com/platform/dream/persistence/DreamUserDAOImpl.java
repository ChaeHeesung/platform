package com.platform.dream.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.dream.domain.ArtUserVO;
import com.platform.dream.domain.SpaceUserVO;

@Repository
public class DreamUserDAOImpl implements DreamUserDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.platform.dream.mapper.UserMapper";
	
	
	@Override
	public void artJoin(ArtUserVO vo) {
		session.insert(namespace + ".artJoin", vo);
	}


	@Override
	public void artMajorJoin(int userNo, int artField) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("user_sq", userNo);
		map.put("at_goods_field_cd", artField);
		session.insert(namespace + ".artMajorJoin", map);
	}

	@Override
	public void spaceJoin(SpaceUserVO vo) {
		session.insert(namespace + ".spaceJoin", vo);
	}


	@Override
	public void artWish(int userNo, int artField) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("user_sq", userNo);
		map.put("at_goods_field_cd", artField);
		session.insert(namespace + ".artWish", map);
	}

	
	
}
