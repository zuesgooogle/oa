package com.s4game.oa.manager.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.s4game.oa.common.entity.Position;
import com.s4game.oa.common.mapper.PositionMapper;
import com.s4game.oa.common.response.Response;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/position")
@Api(value = "position", description = "职位管理")
public class PositionController {

	@Autowired
	private PositionMapper positionManager;

	@ApiOperation(value = "职位列表")
	@RequestMapping(value = "/list")
	public Response list(@ApiParam(value = "职位Id") @RequestParam(value = "node", required = true) Integer node) {
		Response.Builder response = Response.newBuilder();

		List<Position> positions = positionManager.selectByParentId(node);
		response.setData(positions);

		return response.build();
	}

	@ApiOperation(value = "新增职位")
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Response add(
			@ApiParam(value = "职位ParentId") @RequestParam(value = "parentId", required = true) Integer parentId,
			@ApiParam(value = "职位名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		Position parent = positionManager.selectByPrimaryKey(parentId);

		Position position = new Position();
		position.setParentId(parentId);
		position.setName(name);
		position.setCompany(parent.getCompany());
		position.setCreateTime(new Date());

		positionManager.insert(position);

		response.setData(position);
		return response.build();
	}

	@ApiOperation(value = "更新职位")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "职位Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "职位名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();

		Position position = positionManager.selectByPrimaryKey(id);
		position.setName(name);
		positionManager.updateByPrimaryKey(position);

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
