package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.DevelopProgressLand;
import com.s4game.oa.common.mapper.DevelopProgressLandMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/develop/land")
@Api(value = "develop/land", description = "土地开发进度管理")
public class DevelopProgressLandController {
	
	@Autowired
	private DevelopProgressLandMapper developProgressLandMapper;
	
	@Autowired
	private PageService<DevelopProgressLand> pageService;

	@ApiOperation(value = "进度列表")
	@PostMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<DevelopProgressLand> pageInfo = pageService.selectPage(new DevelopProgressLand(), new Page<DevelopProgressLand>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
	
	@ApiOperation(value = "修改进度信息")
	@RequestMapping(value = "/update")
	public Response update(
			@ApiParam(value = "进度ID") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "片区ID") @RequestParam(value = "sectionId", required = true) Integer sectionId,
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
		
		DevelopProgressLand progress = null;
		if (WebUtils.isAdd(id)) {
			progress = new DevelopProgressLand();
			progress.setSectionId(sectionId);
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
			
			developProgressLandMapper.insert(progress);
		} else {
			progress = developProgressLandMapper.selectByPrimaryKey(id);
			progress.setSectionId(sectionId);
			progress.setTaskTypeId(taskTypeId);
			progress.setTaskNameId(taskNameId);
			progress.setPlanStartTime(planStartTime);
			progress.setPlanEndTime(planEndTime);
			progress.setActualStartTime(actualStartTime);
			progress.setActualEndTime(actualEndTime);
			progress.setOrganizer(organizer);
			progress.setDepartmentId(departmentId);
			progress.setUserId(userId);
			
			developProgressLandMapper.updateByPrimaryKey(progress);
		}
		
		response.setData(progress);
		return response.build();
	}
	
	@ApiOperation(value = "删除进度")
	@RequestMapping(value = "/delete")
	public Response delete(
			@ApiParam(value = "进度ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();
		
		int result = developProgressLandMapper.deleteByPrimaryKey(id);
		response.setData(result);
				
		return response.build();
	}
}
