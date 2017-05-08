package com.s4game.oa.manager.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.entity.User;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/user")
@Api(value = "user", description = "用户管理")
public class UserController {

	@ApiOperation(value = "用户列表")
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public User getProfile() {
		return new User();
	}
}
