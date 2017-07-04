package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.ProviderDirectory;
import com.s4game.oa.common.mapper.ProviderDirectoryMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/provider")
@Api(value = "provider", description = "合格供方名录")
public class ProviderDirectoryController {

	@Autowired
	private ProviderDirectoryMapper providerDirectoryManager;

	@Autowired
	private PageService<ProviderDirectory> pageService;
	
	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<ProviderDirectory> pageInfo = pageService.selectPage(new ProviderDirectory(), new Page<ProviderDirectory>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "供方名称") @RequestParam(value = "name", required = true) String name,
			@ApiParam(value = "供方品类") @RequestParam(value = "type", required = true) Byte type,
			@ApiParam(value = "内容") @RequestParam(value = "content", required = true) String content,
			@ApiParam(value = "联系人") @RequestParam(value = "linkman", required = true) String linkman,
			@ApiParam(value = "联系电话") @RequestParam(value = "phone", required = true) String phone,
			@ApiParam(value = "地址") @RequestParam(value = "address", required = true) String address,
			@ApiParam(value = "邮编") @RequestParam(value = "postcode", required = true) String postcode,
			@ApiParam(value = "考察评审表") @RequestParam(value = "assessTable", required = true) String assessTable,
			@ApiParam(value = "能力评审表") @RequestParam(value = "abilityTable", required = true) String abilityTable,
			@ApiParam(value = "供方评价表") @RequestParam(value = "provideTable", required = true) String provideTable,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark
			) {
		Response.Builder response = Response.newBuilder();
		
		ProviderDirectory providerDirectory = null;
		if (WebUtils.isAdd(id)) {
			providerDirectory = new ProviderDirectory();
			providerDirectory.setName(name);
			providerDirectory.setType(type);
			providerDirectory.setContent(content);
			providerDirectory.setLinkman(linkman);
			providerDirectory.setPhone(phone);
			providerDirectory.setAddress(address);
			providerDirectory.setPostcode(postcode);
			providerDirectory.setAssessTable(assessTable);
			providerDirectory.setAbilityTable(abilityTable);
			providerDirectory.setProvideTable(provideTable);
			providerDirectory.setRemark(remark);
			providerDirectory.setCreateTime(new Date());

			providerDirectoryManager.insert(providerDirectory);
		} else {
			providerDirectory = providerDirectoryManager.selectByPrimaryKey(id);
			providerDirectory.setName(name);
			providerDirectory.setType(type);
			providerDirectory.setContent(content);
			providerDirectory.setLinkman(linkman);
			providerDirectory.setPhone(phone);
			providerDirectory.setAddress(address);
			providerDirectory.setPostcode(postcode);
			providerDirectory.setAssessTable(assessTable);
			providerDirectory.setAbilityTable(abilityTable);
			providerDirectory.setProvideTable(provideTable);
			providerDirectory.setRemark(remark);
			
			providerDirectoryManager.updateByPrimaryKey(providerDirectory);
		}

		response.setData(providerDirectory);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = providerDirectoryManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
