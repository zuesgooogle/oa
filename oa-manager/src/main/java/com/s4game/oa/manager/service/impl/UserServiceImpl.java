package com.s4game.oa.manager.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.beans.BeanCopier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.entity.UserDepartment;
import com.s4game.oa.common.entity.UserPosition;
import com.s4game.oa.common.mapper.UserDepartmentMapper;
import com.s4game.oa.common.mapper.UserMapper;
import com.s4game.oa.common.mapper.UserPositionMapper;
import com.s4game.oa.manager.service.IUserService;
import com.s4game.oa.manager.utils.WebUtils;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;

//	@Autowired
//	private PositionMapper postionMapper;
//	
//	@Autowired
//	private DepartmentMapper departmentMapper;
	
	@Autowired
	private UserPositionMapper userPostionMapper;
	
	@Autowired
	private UserDepartmentMapper userDepartmentMapper;
	
	private BeanCopier beanCopier = BeanCopier.create(User.class, User.class, false);
	
//	@Override
//	public SessionUser loadUserByUsername(String username) throws UsernameNotFoundException {
//		User user = userMapper.selectByUsername(username);
//		if (null == user) {
//			return new SessionUser(null, username, "", AuthorityUtils.NO_AUTHORITIES);
//		}
//		
//		List<GrantedAuthority> auths = AuthorityUtils.createAuthorityList(Roles.ADMIN.getName(), Roles.EMPLOYEE.getName());
//		String password = user.getPassword();
//
//		return new SessionUser(user.getId(), username, password, auths);
//	}

	@Override
	public User findByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

	@Override
	public User updateUser(User user) {
		if (WebUtils.isAdd(user.getId())) {
			user.setCreateTime(new Date());
			userMapper.insert(user);
		} else {
			User exist = userMapper.selectByPrimaryKey(user.getId());
			beanCopier.copy(user, exist, null);
			
			userMapper.updateByPrimaryKey(exist);
		}
		
		replacePosition(user);
		replaceDepartment(user);
		
		return user;
	}

	private void replacePosition(User user) {
		userPostionMapper.deleteByUserId(user.getId().intValue());
		
		String[] positionIds = WebUtils.split(user.getPositionids());
		for (String id : positionIds) {
			UserPosition up = new UserPosition();
			up.setPositionId(Integer.parseInt(id));
			up.setUserId(user.getId().intValue());
			
			userPostionMapper.insert(up);
		}
	}
	
	private void replaceDepartment(User user) {
		userDepartmentMapper.deleteByUserId(user.getId().intValue());
		
		String[] departmentIds = WebUtils.split(user.getDepartmentids());
		for (String id : departmentIds) {
			UserDepartment ud = new UserDepartment();
			ud.setDepartmentId(Integer.parseInt(id));
			ud.setUserId(user.getId().intValue());
			
			userDepartmentMapper.insert(ud);
		}
	}
}
