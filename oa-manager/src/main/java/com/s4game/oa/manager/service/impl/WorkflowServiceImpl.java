package com.s4game.oa.manager.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s4game.oa.common.entity.UserProcess;
import com.s4game.oa.common.mapper.UserProcessMapper;
import com.s4game.oa.manager.service.IWorkflowService;

@Service
public class WorkflowServiceImpl implements IWorkflowService {

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private UserProcessMapper userProcessMapper;

	@Override
	public void start(String processDefinitionKey, Map<String, Object> variables) {
		// 找到对应审批定义
		ProcessDefinition processes = repositoryService.createProcessDefinitionQuery()
				.processDefinitionKey(processDefinitionKey).latestVersion().singleResult();
		
		// 启动流程
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processes.getKey(), variables);
		
		List<Task> tasks = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
	
		nextTask(tasks);
	}

	private void nextTask(List<Task> tasks) {
//		SessionUser user = (SessionUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		long userId = 1;
		
		UserProcess userProcess;
		for (Task task : tasks) {
			// 查找执行者
			
			userProcess = new UserProcess();
			userProcess.setTaskId(task.getId());
			userProcess.setFormDataId(1);
			userProcess.setFormKey(task.getFormKey());
			
			userProcess.setCreateId(userId);
			userProcess.setUserId(userId); //TODO
			userProcess.setState((byte)1);
			
			Date now = new Date();
			userProcess.setCreateTime(now);
			userProcess.setBeginTime(now);
			
			userProcessMapper.insert(userProcess);
		}
		
	}
}
