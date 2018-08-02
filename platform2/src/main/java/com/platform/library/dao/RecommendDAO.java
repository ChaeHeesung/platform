package com.platform.library.dao;

import java.util.List;

import com.platform.library.dto.RecommendVO;
import com.platform.library.util.Criteria;

public interface RecommendDAO {
//	public List<RecommendVO> selectRec() throws Exception;
	public List<RecommendVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
}
