package com.s4game.oa.manager.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.entity.CostSubject;
import com.s4game.oa.common.mapper.CostSubjectMapper;
import com.s4game.oa.common.response.Response;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/costsubject")
@Api(value = "costsubject", description = "成本科目")
public class CostSubjectController {

	@Autowired
	private CostSubjectMapper CostSubjectManager;

	@ApiOperation(value = "成本科目列表")
	@RequestMapping(value = "/list")
	public Response list(@ApiParam(value = "成本科目Id") @RequestParam(value = "node", required = true) Integer node) {
		Response.Builder response = Response.newBuilder();

		List<CostSubject> CostSubjects = CostSubjectManager.selectByParentId(node);
		response.setData(CostSubjects);

		return response.build();
	}

	@ApiOperation(value = "新增成本科目")
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Response add(
			@ApiParam(value = "成本科目ParentId") @RequestParam(value = "parentId", required = true) Integer parentId,
			@ApiParam(value = "成本科目名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		CostSubject parent = CostSubjectManager.selectByPrimaryKey(parentId);

		CostSubject CostSubject = new CostSubject();
		CostSubject.setParentId(parentId);
		CostSubject.setName(name);
		CostSubject.setCompany(parent.getCompany());
		CostSubject.setCreateTime(new Date());

		CostSubjectManager.insert(CostSubject);

		response.setData(CostSubject);
		return response.build();
	}

	@ApiOperation(value = "更新成本科目")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "成本科目Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "成本科目名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		CostSubject CostSubject = CostSubjectManager.selectByPrimaryKey(id);
		CostSubject.setName(name);
		CostSubjectManager.updateByPrimaryKey(CostSubject);

		response.setData(CostSubject);
		return response.build();
	}

	@ApiOperation(value = "删除成本科目")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "成本科目Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = CostSubjectManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
