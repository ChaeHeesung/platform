package com.platform.library.service;

import java.util.List;

import com.platform.library.dto.RecommendVO;
import com.platform.library.util.Criteria;

public interface RecommendService {
//	public List<RecommendVO> selectRec() throws Exception;
	public List<RecommendVO> listCrteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
}
