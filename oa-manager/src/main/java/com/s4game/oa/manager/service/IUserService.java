package com.s4game.oa.manager.service;

import com.s4game.oa.common.entity.User;

public interface IUserService {

	User findByMobile(String mobile);
	
	User findByUsername(String username);
	
	User updateUser(User user);
}
