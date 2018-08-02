package com.platform.library.service;

import java.util.List;

import com.platform.library.dto.BookinfoVO;
import com.platform.library.util.Criteria;

public interface BookinfoService {
	public List<BookinfoVO> listCrteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
}
