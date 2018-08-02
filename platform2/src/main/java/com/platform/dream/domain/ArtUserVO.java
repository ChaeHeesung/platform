package com.platform.dream.domain;

import java.util.Arrays;
import java.util.Date;

import com.platform.domain.UserVO;

public class ArtUserVO extends UserVO {

	private Date birth;
	private int gender;
	private int[] artField;
	private int[] spaceField;
	private String emailId;
	private String emailDomain;
	private String phone1;
	private String phone2;
	private String phone3;
	private int sidoCode;
	private int guCode;
	private int dongCode;

	public ArtUserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ArtUserVO(int no, String id, String pw, String name) {
		super(no, id, pw, name);
		// TODO Auto-generated constructor stub
	}

	public ArtUserVO(Date birth, int gender, int[] artField, int[] spaceField, String emailId, String emailDomain,
			String phone1, String phone2, String phone3, int sidoCode, int guCode, int dongCode) {
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
		this.sidoCode = sidoCode;
		this.guCode = guCode;
		this.dongCode = dongCode;
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

	public int[] getSpaceField() {
		return spaceField;
	}

	public void setSpaceField(int[] spaceField) {
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

	public int getSidoCode() {
		return sidoCode;
	}

	public void setSidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}

	public int getGuCode() {
		return guCode;
	}

	public void setGuCode(int guCode) {
		this.guCode = guCode;
	}

	public int getDongCode() {
		return dongCode;
	}

	public void setDongCode(int dongCode) {
		this.dongCode = dongCode;
	}

	@Override
	public String toString() {
		return "ArtUserVO [birth=" + birth + ", gender=" + gender + ", artField=" + Arrays.toString(artField)
				+ ", spaceField=" + Arrays.toString(spaceField) + ", emailId=" + emailId + ", emailDomain="
				+ emailDomain + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + ", sidoCode="
				+ sidoCode + ", guCode=" + guCode + ", dongCode=" + dongCode + ", getNo()=" + getNo() + ", getId()="
				+ getId() + ", getPw()=" + getPw() + ", getName()=" + getName() + "]";
	}

}
