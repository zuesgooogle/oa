package com.s4game.oa.manager.web;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.FinancingLedger;
import com.s4game.oa.common.mapper.FinancingLedgerMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/financing/ledger")
@Api(value = "financing/ledger", description = "融资台账")
public class FnancingLedgerController {
	
	@Autowired
	private FinancingLedgerMapper financingLedgerMapper;
	
	@Autowired
	private PageService<FinancingLedger> pageService;

	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();
		
		PageInfo<FinancingLedger> pageInfo = pageService.selectPage(new FinancingLedger(), new Page<FinancingLedger>(page, limit));
		response.setData(pageInfo.getList());
		
		return response.build();
	}
	
	@ApiOperation(value = "修改信息")
	@RequestMapping(value = "/update")
	public Response update(
			@ApiParam(value = "台账ID") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Integer year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Integer month,
			@ApiParam(value = "类型") @RequestParam(value = "type", required = true) Integer type,
			@ApiParam(value = "银行ID") @RequestParam(value = "bankId", required = true) Integer bankId,
			@ApiParam(value = "项目") @RequestParam(value = "projectName", required = true) String projectName,
			@ApiParam(value = "额度") @RequestParam(value = "amount", required = true) BigDecimal amount,
			@ApiParam(value = "计划融资金额") @RequestParam(value = "financingAmount", required = false) BigDecimal financingAmount,
			@ApiParam(value = "累计已放款金额") @RequestParam(value = "totalLending", required = false) BigDecimal totalLending,
			@ApiParam(value = "累计已还款金额") @RequestParam(value = "totalReplayLoan", required = false) BigDecimal totalReplayLoan,
			@ApiParam(value = "贷款余额") @RequestParam(value = "remainLoan", required = false) BigDecimal remainLoan,
			@ApiParam(value = "期限") @RequestParam(value = "deadline", required = true) String deadline,
			@ApiParam(value = "利率") @RequestParam(value = "rate", required = true) String rate,
			@ApiParam(value = "担保方式") @RequestParam(value = "guaranty", required = true) String guaranty,
			@ApiParam(value = "关键节点") @RequestParam(value = "keyNode", required = false) String keyNode
			) {
		Response.Builder response = Response.newBuilder();
		
		FinancingLedger ledger = null;
		if (WebUtils.isAdd(id)) {
			ledger = new FinancingLedger();
			ledger.setYear(year);
			ledger.setMonth(month);
			ledger.setType(type);
			ledger.setBankId(bankId);
			ledger.setProjectName(projectName);
			ledger.setAmount(amount);
			ledger.setFinancingAmount(financingAmount);
			ledger.setTotalLending(totalLending);
			ledger.setTotalReplayLoan(totalReplayLoan);
			ledger.setRemainLoan(remainLoan);
			ledger.setDeadline(deadline);
			ledger.setRate(rate);
			ledger.setGuaranty(guaranty);
			ledger.setKeyNode(keyNode);
			ledger.setCreateTime(new Date());
			
			financingLedgerMapper.insert(ledger);
		} else {
			ledger = financingLedgerMapper.selectByPrimaryKey(id);
			ledger.setYear(year);
			ledger.setMonth(month);
			ledger.setType(type);
			ledger.setBankId(bankId);
			ledger.setProjectName(projectName);
			ledger.setAmount(amount);
			ledger.setFinancingAmount(financingAmount);
			ledger.setTotalLending(totalLending);
			ledger.setTotalReplayLoan(totalReplayLoan);
			ledger.setRemainLoan(remainLoan);
			ledger.setDeadline(deadline);
			ledger.setRate(rate);
			ledger.setGuaranty(guaranty);
			ledger.setKeyNode(keyNode);
			
			financingLedgerMapper.updateByPrimaryKey(ledger);
		}
		
		response.setData(ledger);
		return response.build();
	}
	
	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete")
	public Response delete(
			@ApiParam(value = "台账ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();
		
		int result = financingLedgerMapper.deleteByPrimaryKey(id);
		response.setData(result);
				
		return response.build();
	}
}
