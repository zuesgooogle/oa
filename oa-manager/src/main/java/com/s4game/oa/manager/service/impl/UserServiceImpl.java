package com.s4game.oa.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.s4game.oa.common.entity.Roles;
import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.mapper.UserMapper;
import com.s4game.oa.manager.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userMapper.selectByUsername(username);
		if (null == user) {
			return new org.springframework.security.core.userdetails.User(username, "", AuthorityUtils.NO_AUTHORITIES);
		}
		
		List<GrantedAuthority> auths = AuthorityUtils.createAuthorityList(Roles.ADMIN.getName(), Roles.EMPLOYEE.getName());
		String password = user.getPassword();

		return new org.springframework.security.core.userdetails.User(username, password, auths);
	}

	@Override
	public User findByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

}
