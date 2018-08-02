package com.platform.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.platform.admin.persistence.StaticsDAO;

@Service
public class StaticsServiceImpl implements StaticsService{

	@Inject
	StaticsDAO staticsDAO;
	
	@Override
	public List<HashMap<String, Object>> listStatsJoinUser() {
		List<HashMap<String, Object>> list = staticsDAO.listStatsJoinUser();
		return list;
	}

	@Override
	public String getArtJoin() {
		String num = staticsDAO.getArtJoin();
		return num;
	}

	@Override
	public String getSpaceJoin() {
		String num = staticsDAO.getSpaceJoin();
		return num;
	}

	
	
	
	
}
