package com.s4game.oa.manager.config;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.form.AbstractFormType;
import org.activiti.engine.impl.cfg.ProcessEngineConfigurationImpl;
import org.activiti.spring.ProcessEngineFactoryBean;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.transaction.PlatformTransactionManager;

//@Configuration
//@AutoConfigureAfter(MyBatisConfig.class)
public class ActivitiConfig {
	
	@Autowired
	private DataSource dataSource;

	@Autowired
	private PlatformTransactionManager transactionManager;
	
	@Bean(name = "processEngineFactoryBean")
	public ProcessEngineFactoryBean processEngineFactoryBean() {
		ProcessEngineFactoryBean factoryBean = new ProcessEngineFactoryBean();
		factoryBean.setProcessEngineConfiguration(processEngineConfiguration());
		return factoryBean;
	}

	@Bean(name = "processEngine")
	public ProcessEngine processEngine() {
		try {
			return processEngineFactoryBean().getObject();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Bean(name = "processEngineConfiguration")
	@DependsOn("dataSource")
	public ProcessEngineConfigurationImpl processEngineConfiguration() {
		SpringProcessEngineConfiguration processEngineConfiguration = new SpringProcessEngineConfiguration();
		processEngineConfiguration.setDataSource(dataSource);
		processEngineConfiguration.setDatabaseSchemaUpdate("false");
		processEngineConfiguration.setDbIdentityUsed(false);
		processEngineConfiguration.setDbHistoryUsed(false);
		processEngineConfiguration.setTransactionManager(transactionManager);
		processEngineConfiguration.setJobExecutorActivate(false);
		processEngineConfiguration.setActivityFontName("宋体");
		processEngineConfiguration.setLabelFontName("宋体");
		processEngineConfiguration.setAnnotationFontName("宋体");
		
		// processEngineConfiguration.setAsyncExecutorEnabled(
		// Boolean.valueOf(environment.getProperty("engine.asyncexecutor.enabled",
		// "true")));
		// processEngineConfiguration.setAsyncExecutorActivate(
		// Boolean.valueOf(environment.getProperty("engine.asyncexecutor.activate",
		// "true")));
		// processEngineConfiguration.setHistory(environment.getProperty("engine.history.level",
		// "full"));
		//
		// String mailEnabled = environment.getProperty("engine.email.enabled");
		// if ("true".equals(mailEnabled)) {
		// processEngineConfiguration.setMailServerHost(environment.getProperty("engine.email.host"));
		// int emailPort = 1025;
		// String emailPortProperty =
		// environment.getProperty("engine.email.port");
		// if (StringUtils.isNotEmpty(emailPortProperty)) {
		// emailPort = Integer.valueOf(emailPortProperty);
		// }
		// processEngineConfiguration.setMailServerPort(emailPort);
		// String emailUsernameProperty =
		// environment.getProperty("engine.email.username");
		// if (StringUtils.isNotEmpty(emailUsernameProperty)) {
		// processEngineConfiguration.setMailServerUsername(emailUsernameProperty);
		// }
		//
		// String emailPasswordProperty =
		// environment.getProperty("engine.email.password");
		// if (StringUtils.isNotEmpty(emailPasswordProperty)) {
		// processEngineConfiguration.setMailServerPassword(emailPasswordProperty);
		// }
		// }

		List<AbstractFormType> formTypes = new ArrayList<AbstractFormType>();
		// formTypes.add(new UserFormType());
		// formTypes.add(new ProcessDefinitionFormType());
		// formTypes.add(new MonthFormType());
		processEngineConfiguration.setCustomFormTypes(formTypes);

		return processEngineConfiguration;
	}

	@Bean
	public RepositoryService repositoryService() {
		return processEngine().getRepositoryService();
	}

	@Bean
	public RuntimeService runtimeService() {
		return processEngine().getRuntimeService();
	}

	@Bean
	public TaskService taskService() {
		return processEngine().getTaskService();
	}

	@Bean
	public HistoryService historyService() {
		return processEngine().getHistoryService();
	}

	@Bean
	public FormService formService() {
		return processEngine().getFormService();
	}

	@Bean
	public IdentityService identityService() {
		return processEngine().getIdentityService();
	}

	@Bean
	public ManagementService managementService() {
		return processEngine().getManagementService();
	}
	
}
