package com.platform.domain;

public class AddressVO {

	private int sido_cd;
	private String sido_nm;
	private int sigungu_cd;
	private String sigungu_nm;
	private int dong_cd;
	private String dong_nm;

	public AddressVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AddressVO(int sido_cd, String sido_nm, int sigungu_cd, String sigungu_nm, int dong_cd, String dong_nm) {
		super();
		this.sido_cd = sido_cd;
		this.sido_nm = sido_nm;
		this.sigungu_cd = sigungu_cd;
		this.sigungu_nm = sigungu_nm;
		this.dong_cd = dong_cd;
		this.dong_nm = dong_nm;
	}

	public int getSido_cd() {
		return sido_cd;
	}

	public void setSido_cd(int sido_cd) {
		this.sido_cd = sido_cd;
	}

	public String getSido_nm() {
		return sido_nm;
	}

	public void setSido_nm(String sido_nm) {
		this.sido_nm = sido_nm;
	}

	public int getSigungu_cd() {
		return sigungu_cd;
	}

	public void setSigungu_cd(int sigungu_cd) {
		this.sigungu_cd = sigungu_cd;
	}

	public String getSigungu_nm() {
		return sigungu_nm;
	}

	public void setSigungu_nm(String sigungu_nm) {
		this.sigungu_nm = sigungu_nm;
	}

	public int getDong_cd() {
		return dong_cd;
	}

	public void setDong_cd(int dong_cd) {
		this.dong_cd = dong_cd;
	}

	public String getDong_nm() {
		return dong_nm;
	}

	public void setDong_nm(String dong_nm) {
		this.dong_nm = dong_nm;
	}

	@Override
	public String toString() {
		return "SigunguVO [sido_cd=" + sido_cd + ", sido_nm=" + sido_nm + ", sigungu_cd=" + sigungu_cd + ", sigungu_nm="
				+ sigungu_nm + ", dong_cd=" + dong_cd + ", dong_nm=" + dong_nm + "]";
	}

}
