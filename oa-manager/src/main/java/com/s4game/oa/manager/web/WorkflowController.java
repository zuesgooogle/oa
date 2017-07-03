package com.s4game.oa.manager.web;

import java.util.HashMap;
import java.util.Map;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.entity.UserProcess;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IWorkflowService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/workflow")
@Api(value = "workflow", description = "审批管理")
public class WorkflowController {

	@Autowired
	private RepositoryService repositoryService;
	
	@Autowired
	private RuntimeService runtimeService;
	
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private IWorkflowService workflowServic;
	
	@Autowired
	private PageService<UserProcess> pageService;
	
	@ApiOperation(value = "审批列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<UserProcess> pageInfo = pageService.selectPage(new UserProcess(), new Page<UserProcess>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
	
	@ApiOperation(value = "发起审批")
	@RequestMapping(value = "/start")
	public Response start(@ApiParam(value = "流程定义Key") @RequestParam(value = "processDefinitionKey", required = false) String processDefinitionKey) {
		Response.Builder response = Response.newBuilder();
		
		processDefinitionKey = "zd-qingjia";
		
		Map<String, Object> variables = new HashMap<>();
		variables.put("positionLevel", 3);
		variables.put("dayNum", 6);
		
		workflowServic.start(processDefinitionKey, variables);
		
		return response.build();
	}
	
	@ApiOperation(value = "审批")
	@RequestMapping(value = "/deal")
	public Response deal(@ApiParam(value = "任务ID") @RequestParam(value = "taskId", required = true) String taskId,
			@ApiParam(value = "审批状态") @RequestParam(value = "status", required = false) Integer status) {
		Response.Builder response = Response.newBuilder();
		
		
		return response.build();
	}
	
//	// 找到对应审批定义
//	ProcessDefinition processes = repositoryService.createProcessDefinitionQuery().processDefinitionKey("zd-qingjia").latestVersion().singleResult();
//
//	// 准备参数
//	Map<String, Object> variables = new HashMap<>();
//	variables.put("positionLevel", 3);
//	variables.put("dayNum", 6);
//	
//	// 启动流程
//	ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processes.getKey(), variables);
//	
//	List<Task> tasks = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
//	
//	for (Task task : tasks) {
//		taskService.complete(task.getId(), variables);
//	}
//	
//	tasks = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
//	for (Task task : tasks) {
//		taskService.complete(task.getId(), variables);
//	}
//	
//	tasks = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
//	for (Task task : tasks) {
//		taskService.complete(task.getId(), variables);
//	}
//	
//	tasks = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
//	for (Task task : tasks) {
//		taskService.complete(task.getId(), variables);
//	}
	
	// 审核不通过，结束流程
//	runtimeService.suspendProcessInstanceById(processInstance.getId());
	
//	long finished = historyService.createHistoricProcessInstanceQuery().processDefinitionId(processes.getId()).finished().count();
	
}
