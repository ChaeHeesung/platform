package com.platform.dream.service;

import com.platform.dream.domain.ArtUserVO;
import com.platform.dream.domain.SpaceUserVO;

public interface DreamUserService {

	public void artJoin(ArtUserVO vo, boolean checkJoin) throws Exception;
	
	public void artMajorJoin(int userNo, int ...artField) throws Exception;
	
	public void spaceJoin(SpaceUserVO vo, boolean checkJoin) throws Exception;
	
	public void artWish(int userNo, int ...artField) throws Exception;
	
}
