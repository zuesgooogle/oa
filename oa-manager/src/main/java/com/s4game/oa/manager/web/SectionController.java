package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.Section;
import com.s4game.oa.common.mapper.SectionMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/section")
@Api(value = "section", description = "标段管理")
public class SectionController {

	@Autowired
	private SectionMapper sectionManager;

	@Autowired
	private PageService<Section> pageService;
	
	@ApiOperation(value = "标段列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Section> pageInfo = pageService.selectPage(new Section(), new Page<Section>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新标段")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "标段Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "标段名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();
		
		Section section = null;
		if (WebUtils.isAdd(id)) {
			section = new Section();
			section.setName(name);
			section.setCreateTime(new Date());

			sectionManager.insert(section);
		} else {
			section = sectionManager.selectByPrimaryKey(id);
			section.setName(name);
			sectionManager.updateByPrimaryKey(section);
		}

		response.setData(section);
		return response.build();
	}

	@ApiOperation(value = "删除标段")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "标段Id") @RequestParam(value = "id", required = false) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = sectionManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
