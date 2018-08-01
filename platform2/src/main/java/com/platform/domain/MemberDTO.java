package com.platform.domain;

public class MemberDTO {

	/** MEM_NO 계정 일련 번호 PK */
	private Integer user_sq;
	/** MEM_ID 계정 아이디 */
	private String user_id;
	/** MEM_PASSWORD 계정 비밀번호 */
	private transient String user_pw;
	/** MEM_NICKNM 계정 사용자의 이름 또는 별명 */
	private String user_nm;

	private boolean enabled;
	public Integer getUser_sq() {
		return user_sq;
	}

	public void setUser_sq(Integer user_sq) {
		this.user_sq = user_sq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw.trim();
	}

	public String getUser_nm() {
		return user_nm;
	}

	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	
	

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnable(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "MemberDTO [user_sq=" + user_sq + ", user_id=" + user_id + ", user_pw=" + "[PROTECT]" + ", user_nm="
				+ user_nm + ", enabled=" + enabled + "]";
	}

	

}
