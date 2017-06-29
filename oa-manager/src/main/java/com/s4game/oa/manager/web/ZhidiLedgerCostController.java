package com.s4game.oa.manager.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.ZhidiLedgerCost;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/zhidi/ledger/cost")
@Api(value = "/zhidi/ledger/cost", description = "成本台账（置地）")
public class ZhidiLedgerCostController {

	@Autowired
	private PageService<ZhidiLedgerCost> pageService;
	
	@ApiOperation(value = "台账列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<ZhidiLedgerCost> pageInfo = pageService.selectPage(new ZhidiLedgerCost(), new Page<ZhidiLedgerCost>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
}
