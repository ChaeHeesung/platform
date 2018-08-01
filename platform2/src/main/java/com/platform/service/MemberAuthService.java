package com.platform.service;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;

public interface MemberAuthService {
	public List<GrantedAuthority> loadUserAuthorities(Integer memNo);
}
