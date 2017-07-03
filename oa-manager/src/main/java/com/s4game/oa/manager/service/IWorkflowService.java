package com.s4game.oa.manager.service;

import java.util.Map;

public interface IWorkflowService {

	/**
	 * 开始流程
	 * 
	 * @param processDefinitionKey
	 * @param variables
	 */
	public void start(String processDefinitionKey, Map<String, Object> variables);
	
}
