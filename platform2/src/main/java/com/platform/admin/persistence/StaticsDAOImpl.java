package com.platform.admin.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StaticsDAOImpl implements StaticsDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.platform.admin.mapper.StaticMapper";
	@Override
	public List<HashMap<String, Object>> listStatsJoinUser() {
		
		return session.selectList(namespace + ".listStatsJoinUser");
	}
	@Override
	public String getArtJoin() {
		return session.selectOne(namespace + ".getArtJoin");
	}
	@Override
	public String getSpaceJoin() {
		return session.selectOne(namespace + ".getSpaceJoin");
	}
	
	
	
	
}
