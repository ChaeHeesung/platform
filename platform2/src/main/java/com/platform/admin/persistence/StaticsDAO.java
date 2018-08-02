package com.platform.admin.persistence;

import java.util.HashMap;
import java.util.List;

public interface StaticsDAO {

	public List<HashMap<String, Object>> listStatsJoinUser();
	
	public String getArtJoin();
	
	public String getSpaceJoin();
	
}
