package com.platform.dream.domain;

import java.util.Arrays;
import java.util.Date;

import com.platform.domain.UserVO;

public class SpaceUserVO extends UserVO {

	private Date birth;
	private int gender;
	private int[] artField;
	private int spaceField;
	private String emailId;
	private String emailDomain;
	private String phone1;
	private String phone2;
	private String phone3;
	private String tel_cd;
	private String tel2;
	private String tel3;
	private String addrDetail;
	private int dong_cd;
	private Double coordinateX;
	private Double coordinateY;

	public SpaceUserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SpaceUserVO(int no, String id, String pw, String name) {
		super(no, id, pw, name);
		// TODO Auto-generated constructor stub
	}

	public SpaceUserVO(Date birth, int gender, int[] artField, int spaceField, String emailId, String emailDomain,
			String phone1, String phone2, String phone3, String tel_cd, String tel2, String tel3, String addrDetail,
			int dong_cd, Double coordinateX, Double coordinateY) {
		super();
		this.birth = birth;
		this.gender = gender;
		this.artField = artField;
		this.spaceField = spaceField;
		this.emailId = emailId;
		this.emailDomain = emailDomain;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.tel_cd = tel_cd;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.addrDetail = addrDetail;
		this.dong_cd = dong_cd;
		this.coordinateX = coordinateX;
		this.coordinateY = coordinateY;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int[] getArtField() {
		return artField;
	}

	public void setArtField(int[] artField) {
		this.artField = artField;
	}

	public int getSpaceField() {
		return spaceField;
	}

	public void setSpaceField(int spaceField) {
		this.spaceField = spaceField;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getEmailDomain() {
		return emailDomain;
	}

	public void setEmailDomain(String emailDomain) {
		this.emailDomain = emailDomain;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getTel_cd() {
		return tel_cd;
	}

	public void setTel_cd(String tel_cd) {
		this.tel_cd = tel_cd;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public int getDong_cd() {
		return dong_cd;
	}

	public void setDong_cd(int dong_cd) {
		this.dong_cd = dong_cd;
	}

	public Double getCoordinateX() {
		return coordinateX;
	}

	public void setCoordinateX(Double coordinateX) {
		this.coordinateX = coordinateX;
	}

	public Double getCoordinateY() {
		return coordinateY;
	}

	public void setCoordinateY(Double coordinateY) {
		this.coordinateY = coordinateY;
	}

	@Override
	public String toString() {
		return "SpaceUserVO [birth=" + birth + ", gender=" + gender + ", artField=" + Arrays.toString(artField)
				+ ", spaceField=" + spaceField + ", emailId=" + emailId + ", emailDomain=" + emailDomain + ", phone1="
				+ phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + ", tel_cd=" + tel_cd + ", tel2=" + tel2
				+ ", tel3=" + tel3 + ", addrDetail=" + addrDetail + ", dong_cd=" + dong_cd + ", coordinateX="
				+ coordinateX + ", coordinateY=" + coordinateY + ", getNo()=" + getNo() + ", getId()=" + getId()
				+ ", getPw()=" + getPw() + ", getName()=" + getName() + "]";
	}

}
