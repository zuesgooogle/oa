package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.Area;
import com.s4game.oa.common.mapper.AreaMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/area")
@Api(value = "area", description = "片区管理")
public class AreaController {

	@Autowired
	private AreaMapper areaManager;

	@Autowired
	private PageService<Area> pageService;
	
	@ApiOperation(value = "片区列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Area> pageInfo = pageService.selectPage(new Area(), new Page<Area>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新片区")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "片区Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "片区名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();
		
		Area area = null;
		if (WebUtils.isAdd(id)) {
			area = new Area();
			area.setName(name);
			area.setCreateTime(new Date());

			areaManager.insert(area);
		} else {
			area = areaManager.selectByPrimaryKey(id);
			area.setName(name);
			areaManager.updateByPrimaryKey(area);
		}

		response.setData(area);
		return response.build();
	}

	@ApiOperation(value = "删除片区")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "片区Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = areaManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
