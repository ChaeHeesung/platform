package com.platform.admin.domain;


public class StaticJoin {

	private int sumJoin;
	private String joinDate;

	public StaticJoin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StaticJoin(int sumJoin, String joinDate) {
		super();
		this.sumJoin = sumJoin;
		this.joinDate = joinDate;
	}

	public int getSumJoin() {
		return sumJoin;
	}

	public void setSumJoin(int sumJoin) {
		this.sumJoin = sumJoin;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "StaticJoin [sumJoin=" + sumJoin + ", joinDate=" + joinDate + "]";
	}

}
