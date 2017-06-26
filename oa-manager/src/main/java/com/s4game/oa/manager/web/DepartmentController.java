package com.s4game.oa.manager.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.entity.Department;
import com.s4game.oa.common.mapper.DepartmentMapper;
import com.s4game.oa.common.response.Response;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/department")
@Api(value = "department", description = "部门管理")
public class DepartmentController {

	@Autowired
	private DepartmentMapper departmentManager;

	@ApiOperation(value = "部门列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "部门Id") @RequestParam(value = "node", required = true) Integer node
			) {
		Response.Builder response = Response.newBuilder();
		
		List<Department> departments = departmentManager.selectByParentId(node);
		response.setData(departments);
		
		return response.build();
	}
	
	@ApiOperation(value = "新增部门")
	@RequestMapping(value = "/add", method = RequestMethod.POST) 
	public Response add(
			@ApiParam(value = "部门ParentId") @RequestParam(value = "parentId", required = true) Integer parentId,
			@ApiParam(value = "部门名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();
		
		Department department = new Department();
		department.setParentId(parentId);
		department.setName(name);
		department.setDeleted((byte) 0);
		department.setCreateTime(new Date());

		departmentManager.insert(department);
		
		response.setData(department);
		return response.build();
	}

	@ApiOperation(value = "更新部门")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(
			@ApiParam(value = "部门Id") @RequestParam(value = "id", required = false) Integer id,
			@ApiParam(value = "部门名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		Department department = departmentManager.selectByPrimaryKey(id);
		department.setName(name);
		departmentManager.updateByPrimaryKey(department);

		response.setData(department);
		return response.build();
	}

	@ApiOperation(value = "删除部门")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(
			@ApiParam(value = "部门Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = departmentManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
