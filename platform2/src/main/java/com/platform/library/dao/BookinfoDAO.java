package com.platform.library.dao;

import java.util.List;

import com.platform.library.dto.BookinfoVO;
import com.platform.library.util.Criteria;

public interface BookinfoDAO {
	public List<BookinfoVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
}
