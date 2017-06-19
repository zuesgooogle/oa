package com.s4game.oa.manager.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.service.PageService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/user")
@Api(value = "user", description = "用户管理")
public class UserController {
	
	@Autowired
	private PageService<User> pageService;
	
	@ApiOperation(value = "用户列表")
	@RequestMapping(value = "/list")
	public List<User> list() {
		PageInfo<User> pageInfo = pageService.selectPage(new User(), new Page<User>(1, 100));
		
		return pageInfo.getList();
	}
}
