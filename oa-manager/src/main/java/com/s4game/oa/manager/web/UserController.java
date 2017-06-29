package com.s4game.oa.manager.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/user")
@Api(value = "user", description = "用户管理")
public class UserController {
	
//	@Autowired
//	private IUserService userService;
//	
//	@Autowired
//	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private PageService<User> pageService;
	
//	@ApiOperation(value = "用户登录")
//	@RequestMapping(value = "/login")
//	public Response login(
//			@ApiParam(value = "用户名") @RequestParam(value = "username", required = true) String username,
//			@ApiParam(value = "密码") @RequestParam(value = "password", required = true) String password
//			) {
//		Response.Builder response = Response.newBuilder();
//		
//		User user = userService.findByUsername(username);
//		if (user == null) {
//			return response.failure("").errorCode(ErrorCode.INVALID_USERNAME_OR_PASSWORD).build();
//		}
//		
//		String pwd = passwordEncoder.encode(password);
//		if (!user.getPassword().equals(pwd)) {
//			return response.failure("").errorCode(ErrorCode.INVALID_USERNAME_OR_PASSWORD).build();
//		}
//		
//		return response.success().build();
//	}
	
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
}
