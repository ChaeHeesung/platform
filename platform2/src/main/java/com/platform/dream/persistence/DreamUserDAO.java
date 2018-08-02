package com.platform.dream.persistence;

import com.platform.dream.domain.ArtUserVO;
import com.platform.dream.domain.SpaceUserVO;

public interface DreamUserDAO {
	
	public void artJoin(ArtUserVO vo);
	
	public void artMajorJoin(int userNo, int artField);
	
	public void spaceJoin(SpaceUserVO vo);
	
	public void artWish(int userNo, int artField);
}
