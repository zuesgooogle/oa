package com.s4game.oa.manager.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.entity.CostSubject;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.manager.service.ICostSubjectService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/costsubject")
@Api(value = "costsubject", description = "成本科目")
public class CostSubjectController {
	
	@Autowired
	private ICostSubjectService costSubjectService;
	
	@ApiOperation(value = "用户列表")
	@RequestMapping(value = "/list")
	public Response list() {
		Response.Builder response = Response.newBuilder();
		
		List<CostSubject> subjects = costSubjectService.getSubjects();
		response.setData(subjects);
		
		return response.success().build();
	}
}
