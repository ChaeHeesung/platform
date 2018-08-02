package com.platform.library.util;

public class SearchCriteria extends Criteria{
	
	// 멤버 변수
	private String searchType;
	private String keyword;
	
	// getter / setter
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String serachType) {
		this.searchType = serachType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	// toString
	@Override
	public String toString() {
		return "SerachCriteria [serachType=" + searchType + ", keyword=" + keyword + "]";
	}
	
	
}
