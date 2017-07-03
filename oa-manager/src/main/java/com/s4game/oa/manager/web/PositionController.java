package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.Position;
import com.s4game.oa.common.mapper.PositionMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/position")
@Api(value = "position", description = "职位管理")
public class PositionController {

	@Autowired
	private PositionMapper positionManager;

	@Autowired
	private PageService<Position> pageService;
	
	@ApiOperation(value = "职位列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Position> pageInfo = pageService.selectPage(new Position(), new Page<Position>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新职位")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "职位Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "职位名称") @RequestParam(value = "name", required = true) String name,
			@ApiParam(value = "职位别名") @RequestParam(value = "alias", required = true) String alias,
			@ApiParam(value = "所属公司") @RequestParam(value = "company", required = true) Integer company,
			@ApiParam(value = "职位等级") @RequestParam(value = "level", required = true) Integer level) {
		Response.Builder response = Response.newBuilder();
		
		Position position = null;
		if (WebUtils.isAdd(id)) {
			position = new Position();
			position.setName(name);
			position.setAlias(alias);
			position.setLevel(level);
			position.setCompany(company);
			position.setCreateTime(new Date());

			positionManager.insert(position);
		} else {
			position = positionManager.selectByPrimaryKey(id);
			position.setName(name);
			position.setAlias(alias);
			position.setLevel(level);
			position.setCompany(company);
			positionManager.updateByPrimaryKey(position);
		}

		response.setData(position);
		return response.build();
	}

	@ApiOperation(value = "删除职位")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "职位Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = positionManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
