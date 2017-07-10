package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.TaskClassifi;
import com.s4game.oa.common.mapper.TaskClassifiMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/taskclassifi")
@Api(value = "taskclassifi", description = "任务分类")
public class TaskClassifiController {

	@Autowired
	private TaskClassifiMapper taskClassifiManager;
	
	@Autowired
	private PageService<TaskClassifi> pageService;

	@ApiOperation(value = "任务分类列表")
	@RequestMapping(value = "/list")
	public Response list(@ApiParam(value = "任务分类Id") @RequestParam(value = "node", required = false) Integer node) {
		Response.Builder response = Response.newBuilder();

		TaskClassifi params = new TaskClassifi();
		if (node != null) {
			params.setParentId(node);
		}
		
		PageInfo<TaskClassifi> pageInfo = pageService.selectPage(params, new Page<TaskClassifi>(1, 1000));
		response.setData(pageInfo.getList());
		response.setTotalCount(pageInfo.getTotal());

		return response.build();
	}

	@ApiOperation(value = "新增任务分类")
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Response add(
			@ApiParam(value = "任务分类ParentId") @RequestParam(value = "parentId", required = true) Integer parentId,
			@ApiParam(value = "任务分类名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		TaskClassifi parent = taskClassifiManager.selectByPrimaryKey(parentId);
		if (parent == null) {
			parentId = 0;
		}
		
		TaskClassifi taskClassifi = new TaskClassifi();
		taskClassifi.setParentId(parentId);
		taskClassifi.setName(name);
		taskClassifi.setCreateTime(new Date());

		taskClassifiManager.insert(taskClassifi);

		response.setData(taskClassifi);
		return response.build();
	}

	@ApiOperation(value = "更新任务分类")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "任务分类Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "任务分类名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		TaskClassifi TaskClassifi = taskClassifiManager.selectByPrimaryKey(id);
		TaskClassifi.setName(name);
		taskClassifiManager.updateByPrimaryKey(TaskClassifi);

		response.setData(TaskClassifi);
		return response.build();
	}

	@ApiOperation(value = "删除任务分类")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "任务分类Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = taskClassifiManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
