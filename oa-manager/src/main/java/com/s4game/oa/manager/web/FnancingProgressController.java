package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.FinancingProgress;
import com.s4game.oa.common.mapper.FinancingProgressMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/financing")
@Api(value = "financing", description = "融资进度管理")
public class FnancingProgressController {
	
	@Autowired
	private FinancingProgressMapper financingProgressMapper;
	
	@Autowired
	private PageService<FinancingProgress> pageService;

	@ApiOperation(value = "进度列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<FinancingProgress> pageInfo = pageService.selectPage(new FinancingProgress(), new Page<FinancingProgress>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
	
	@ApiOperation(value = "修改进度信息")
	@RequestMapping(value = "/update")
	public Response update(
			@ApiParam(value = "进度ID") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "银行ID") @RequestParam(value = "bankId", required = true) Integer bankId,
			@ApiParam(value = "任务类型") @RequestParam(value = "taskTypeId", required = true) Integer taskTypeId,
			@ApiParam(value = "任务名称") @RequestParam(value = "taskNameId", required = true) Integer taskNameId,
			@ApiParam(value = "计划开始时间") @RequestParam(value = "planStartTime", required = true) Date planStartTime,
			@ApiParam(value = "计划结束时间") @RequestParam(value = "planEndTime", required = true) Date planEndTime,
			@ApiParam(value = "实际开始时间") @RequestParam(value = "actualStartTime", required = false) Date actualStartTime,
			@ApiParam(value = "实际结束时间") @RequestParam(value = "actualEndTime", required = false) Date actualEndTime,
			@ApiParam(value = "责任单位") @RequestParam(value = "organizer", required = true) String organizer,
			@ApiParam(value = "责任部门") @RequestParam(value = "departmentId", required = true) Integer departmentId,
			@ApiParam(value = "责任人") @RequestParam(value = "userId", required = true) Long userId
			) {
		Response.Builder response = Response.newBuilder();
		
		FinancingProgress progress = null;
		if (WebUtils.isAdd(id)) {
			progress = new FinancingProgress();
			progress.setBankId(bankId);
			progress.setTaskTypeId(taskTypeId);
			progress.setTaskNameId(taskNameId);
			progress.setPlanStartTime(planStartTime);
			progress.setPlanEndTime(planEndTime);
			progress.setActualStartTime(actualStartTime);
			progress.setActualEndTime(actualEndTime);
			progress.setOrganizer(organizer);
			progress.setDepartmentId(departmentId);
			progress.setUserId(userId);
			
			progress.setCreateTime(new Date());
			
			financingProgressMapper.insert(progress);
		} else {
			progress = financingProgressMapper.selectByPrimaryKey(id);
			progress.setBankId(bankId);
			progress.setTaskTypeId(taskTypeId);
			progress.setTaskNameId(taskNameId);
			progress.setPlanStartTime(planStartTime);
			progress.setPlanEndTime(planEndTime);
			progress.setActualStartTime(actualStartTime);
			progress.setActualEndTime(actualEndTime);
			progress.setOrganizer(organizer);
			progress.setDepartmentId(departmentId);
			progress.setUserId(userId);
			
			financingProgressMapper.updateByPrimaryKey(progress);
		}
		
		response.setData(progress);
		return response.build();
	}
	
	@ApiOperation(value = "删除进度")
	@RequestMapping(value = "/delete")
	public Response delete(
			@ApiParam(value = "进度ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();
		
		int result = financingProgressMapper.deleteByPrimaryKey(id);
		response.setData(result);
				
		return response.build();
	}
}
