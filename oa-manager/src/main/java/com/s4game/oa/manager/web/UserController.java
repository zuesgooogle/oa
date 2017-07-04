package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.mapper.UserMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IUserService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/user")
@Api(value = "user", description = "用户管理")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
//	@Autowired
//	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PageService<User> pageService;
	
	@ApiOperation(value = "用户登录")
	@RequestMapping(value = "/login")
	public Response login(
			@ApiParam(value = "用户名") @RequestParam(value = "username", required = true) String username,
			@ApiParam(value = "密码") @RequestParam(value = "password", required = true) String password
			) {
		Response.Builder response = Response.newBuilder();
		
		User user = userService.findByUsername(username);
		if (user == null) {
			return response.failure("用户名或者密码错误").build();
		}
		
		if (!user.getPassword().equals(password)) {
			return response.failure("用户名或者密码错误").build();
		}
		
		return response.success().build();
	}
	
	@ApiOperation(value = "用户列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<User> pageInfo = pageService.selectPage(new User(), new Page<User>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
	
	@ApiOperation(value = "修改用户信息")
	@RequestMapping(value = "/update")
	public Response update(
			@ApiParam(value = "用户ID") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "用户名") @RequestParam(value = "username", required = true) String username,
			@ApiParam(value = "部门") @RequestParam(value = "departmentids", required = true) String departmentids,
			@ApiParam(value = "职位") @RequestParam(value = "positionids", required = true) String positionids,
			@ApiParam(value = "房间号") @RequestParam(value = "roomId", required = false) Integer roomId,
			@ApiParam(value = "北京号码") @RequestParam(value = "beijingMobile", required = false) String beijingMobile,
			@ApiParam(value = "天津号码") @RequestParam(value = "tianjingMobile", required = false) String tianjingMobile,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark
			) {
		Response.Builder response = Response.newBuilder();
		
		User user = new User();
		user.setId(id);
		user.setUsername(username);
//		user.setPassword(passwordEncoder.encode("123456"));
		user.setPassword("123456");
		user.setDepartmentids(departmentids);
		user.setPositionids(positionids);
		user.setRoomId(roomId);
		user.setBeijingMobile(beijingMobile);
		user.setTianjingMobile(tianjingMobile);
		user.setRemark(remark);
		
		userService.updateUser(user);
		
		response.setData(user);
		return response.build();
	}
	
	@ApiOperation(value = "删除用户")
	@RequestMapping(value = "/delete")
	public Response delete(
			@ApiParam(value = "用户ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();
		
		int result = userMapper.deleteByPrimaryKey(id);
		response.setData(result);
				
		return response.build();
	}
	
	@ApiOperation(value = "test")
	@RequestMapping(value = "/test")
	public Response delete() {
		Response.Builder response = Response.newBuilder();
		
		response.setData(new Date());
				
		return response.build();
	}
}
