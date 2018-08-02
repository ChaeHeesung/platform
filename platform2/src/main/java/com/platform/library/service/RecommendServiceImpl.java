package com.platform.library.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.platform.library.dao.RecommendDAO;
import com.platform.library.dto.RecommendVO;
import com.platform.library.util.Criteria;

@Service
public class RecommendServiceImpl implements RecommendService {
	@Inject
	private RecommendDAO dao;

//	@Override
//	public List<RecommendVO> selectRec() throws Exception {
//		return dao.selectRec();
//	}

	@Override
	public List<RecommendVO> listCrteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
}
