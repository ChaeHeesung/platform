package com.platform.library.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.platform.library.dao.BookinfoDAO;
import com.platform.library.dto.BookinfoVO;
import com.platform.library.util.Criteria;

@Service
public class BookinfoServiceImpl implements BookinfoService {
	@Inject
	private BookinfoDAO dao;

	@Override
	public List<BookinfoVO> listCrteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
}
