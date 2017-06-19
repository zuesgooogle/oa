package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.Department;
import com.s4game.oa.common.mapper.DepartmentMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/department")
@Api(value = "department", description = "部门管理")
public class DepartmentController {

	@Autowired
	private DepartmentMapper departmentManager;

	@Autowired
	private PageService<Department> pageService;

	@ApiOperation(value = "部门列表")
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Department> pageInfo = pageService.selectPage(new Department(), new Page<>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "部门更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(
			@ApiParam(value = "部门Id") @RequestParam(value = "id", required = false) Integer id,
			@ApiParam(value = "部门名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		Department department;
		if (id == null) {
			department = new Department();
			department.setName(name);
			department.setDeleted((byte) 0);
			department.setCreateTime(new Date());

			departmentManager.insert(department);
		} else {
			department = departmentManager.selectByPrimaryKey(id);
			department.setName(name);
			departmentManager.updateByPrimaryKey(department);
		}

		response.setData(department);
		return response.build();
	}

	@ApiOperation(value = "部门更新")
	@RequestMapping(value = "/date")
	public Date date() {
		return new Date();
	}
}
