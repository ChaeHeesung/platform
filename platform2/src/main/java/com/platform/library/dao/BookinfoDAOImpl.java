package com.platform.library.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.platform.library.dto.BookinfoVO;
import com.platform.library.util.Criteria;

@Repository
public class BookinfoDAOImpl implements BookinfoDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.platform.mapper.libraryMapper";

	@Override
	public List<BookinfoVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(Namespace + ".selbookinfo", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(Namespace + ".countPaging_book", cri);
	}

}
