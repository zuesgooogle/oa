package com.s4game.oa.manager.web;

import java.util.List;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.response.Response;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/activiti")
@Api(value = "activiti", description = "流程管理")
public class ActivitiController {

	@Autowired
	private RepositoryService repositoryService;
	
	@ApiOperation(value = "流程列表")
	@RequestMapping(value = "/list")
	public Response list() {
		Response.Builder response = Response.newBuilder();
		
		List<ProcessDefinition> processes = repositoryService.createProcessDefinitionQuery().list();
		response.setData(processes);
		
		return response.build();
	}
}
