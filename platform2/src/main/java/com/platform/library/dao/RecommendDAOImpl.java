package com.platform.library.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.library.dto.RecommendVO;
import com.platform.library.util.Criteria;

@Repository
public class RecommendDAOImpl implements RecommendDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.platform.mapper.libraryMapper";

//	@Override
//	public List<RecommendVO> selectRec() throws Exception {
//		return sqlSession.selectList(Namespace+".selectRec");
//	}

	@Override
	public List<RecommendVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(Namespace + ".selectRec", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(Namespace + ".countPaging", cri);
	}

}
