package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.constants.PageConstants;
import com.s4game.oa.common.entity.Land;
import com.s4game.oa.common.mapper.LandMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/land")
@Api(value = "land", description = "地块管理")
public class LandController {

	@Autowired
	private LandMapper landManager;

	@Autowired
	private PageService<Land> pageService;
	
	@ApiOperation(value = "地块列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Land> pageInfo = pageService.selectPage(new Land(), new Page<Land>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新地块")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "地块Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "地块名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();
		
		Land land = null;
		if (WebUtils.isAdd(id)) {
			land = new Land();
			land.setName(name);
			land.setCreateTime(new Date());

			landManager.insert(land);
		} else {
			land = landManager.selectByPrimaryKey(id);
			land.setName(name);
			landManager.updateByPrimaryKey(land);
		}

		response.setData(land);
		return response.build();
	}

	@ApiOperation(value = "删除地块")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "地块Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = landManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
