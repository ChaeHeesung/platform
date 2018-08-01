package com.platform.domain;

public class AuthDTO {

	/** AUTH_NO 권한 일련 번호 */
	private Integer group_id;
	/** AUTH_NM 권한 명 */
	private String group_nm;
	/** AUTH_EXPLANATION 권한 설명 */
	private String authority;

	public AuthDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AuthDTO(Integer group_id, String group_nm, String authority) {
		super();
		this.group_id = group_id;
		this.group_nm = group_nm;
		this.authority = authority;
	}

	public Integer getGroup_id() {
		return group_id;
	}

	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}

	public String getGroup_nm() {
		return group_nm;
	}

	public void setGroup_nm(String group_nm) {
		this.group_nm = group_nm;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "AuthDTO [group_id=" + group_id + ", group_nm=" + group_nm + ", authority=" + authority + "]";
	}

}
