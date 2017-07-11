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
import com.s4game.oa.common.entity.Bank;
import com.s4game.oa.common.mapper.BankMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/bank")
@Api(value = "bank", description = "银行管理")
public class BankController {

	@Autowired
	private BankMapper bankManager;

	@Autowired
	private PageService<Bank> pageService;
	
	@ApiOperation(value = "银行列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<Bank> pageInfo = pageService.selectPage(new Bank(), new Page<Bank>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新银行")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "银行Id") @RequestParam(value = "id", required = true) Integer id,
			@ApiParam(value = "银行名称") @RequestParam(value = "name", required = true) String name) {
		Response.Builder response = Response.newBuilder();
		
		Bank Bank = null;
		if (WebUtils.isAdd(id)) {
			Bank = new Bank();
			Bank.setName(name);
			Bank.setCreateTime(new Date());

			bankManager.insert(Bank);
		} else {
			Bank = bankManager.selectByPrimaryKey(id);
			Bank.setName(name);
			bankManager.updateByPrimaryKey(Bank);
		}

		response.setData(Bank);
		return response.build();
	}

	@ApiOperation(value = "删除银行")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "银行Id") @RequestParam(value = "id", required = true) Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = bankManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
