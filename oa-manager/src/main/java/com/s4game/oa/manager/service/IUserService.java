package com.s4game.oa.manager.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.s4game.oa.common.entity.User;

public interface IUserService extends UserDetailsService {

	User findByUsername(String username);
	
}
