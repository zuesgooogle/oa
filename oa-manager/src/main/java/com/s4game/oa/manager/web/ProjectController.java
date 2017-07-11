package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.constants.PageConstants;
import com.s4game.oa.common.entity.Project;
import com.s4game.oa.common.mapper.ProjectMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/project")
@Api(value = "project", description = "项目管理")
public class ProjectController {

	@Autowired
	private ProjectMapper projectManager;

	@Autowired
	private PageService<Project> pageService;
	
	@ApiOperation(value = "项目列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Project> pageInfo = pageService.selectPage(new Project(), new Page<Project>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新项目")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "项目Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "项目名称") @RequestParam(value = "name", required = true) String name,
			@ApiParam(value = "所属公司") @RequestParam(value = "company", required = true) Integer company) {
		Response.Builder response = Response.newBuilder();
		
		Project project = null;
		if (WebUtils.isAdd(id)) {
			project = new Project();
			project.setName(name);
			project.setCompany(company);
			project.setCreateTime(new Date());

			projectManager.insert(project);
		} else {
			project = projectManager.selectByPrimaryKey(id);
			project.setName(name);
			project.setCompany(company);
			projectManager.updateByPrimaryKey(project);
		}

		response.setData(project);
		return response.build();
	}

	@ApiOperation(value = "删除项目")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "项目Id") @RequestParam(value = "id", required = true) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = projectManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
