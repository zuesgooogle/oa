package com.s4game.oa.manager.web;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.ZhidiLedgerCost;
import com.s4game.oa.common.mapper.ZhidiLedgerCostMapper;
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

	@Autowired
	private ZhidiLedgerCostMapper ledgerCostMapper;
	
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
	
	
	@ApiOperation(value = "更新台账")
	@RequestMapping(value = "/update")
	public Response update(
			@ApiParam(value = "台账ID") @RequestParam(value = "id", required = false) Long id,
			@ApiParam(value = "片区") @RequestParam(value = "area", required = true) Integer area,
			@ApiParam(value = "成本科目ID") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "可研测算金额") @RequestParam(value = "calculateInvest", required = true) BigDecimal calculateInvest,
			@ApiParam(value = "预计投入金额") @RequestParam(value = "expectInvest", required = true) BigDecimal expectInvest,
			@ApiParam(value = "累计投入") @RequestParam(value = "totalInvest", required = true) BigDecimal totalInvest,
			@ApiParam(value = "审计资料统计金额") @RequestParam(value = "auditStatistics", required = true) BigDecimal auditStatistics,
			@ApiParam(value = "政府确认金额") @RequestParam(value = "govConfirm", required = true) BigDecimal govConfirm,
			@ApiParam(value = "政府程序金额") @RequestParam(value = "govCheck", required = true) BigDecimal govCheck,
			@ApiParam(value = "未核对金额") @RequestParam(value = "uncheck", required = true) BigDecimal uncheck,
			@ApiParam(value = "说明") @RequestParam(value = "remark", required = false) String remark
			) {
		Response.Builder response = Response.newBuilder();
		
		ZhidiLedgerCost ledgerCost = null;
		if (id == null) {
			ledgerCost = new ZhidiLedgerCost();
			ledgerCost.setArea(area);
			ledgerCost.setSubjectId(subjectId);
			ledgerCost.setCalculateInvest(calculateInvest);
			ledgerCost.setExpectInvest(expectInvest);
			ledgerCost.setTotalInvest(totalInvest);
			ledgerCost.setTotalInvest(totalInvest);
			ledgerCost.setAuditStatistics(auditStatistics);
			ledgerCost.setGovConfirm(govConfirm);
			ledgerCost.setGovCheck(govCheck);
			ledgerCost.setUncheck(uncheck);
			ledgerCost.setRemark(remark);
			ledgerCost.setCreateTime(new Date());
			
			ledgerCostMapper.insert(ledgerCost);
		} else {
			ledgerCost = ledgerCostMapper.selectByPrimaryKey(id);
			ledgerCost.setArea(area);
			ledgerCost.setSubjectId(subjectId);
			ledgerCost.setCalculateInvest(calculateInvest);
			ledgerCost.setExpectInvest(expectInvest);
			ledgerCost.setTotalInvest(totalInvest);
			ledgerCost.setTotalInvest(totalInvest);
			ledgerCost.setAuditStatistics(auditStatistics);
			ledgerCost.setGovConfirm(govConfirm);
			ledgerCost.setGovCheck(govCheck);
			ledgerCost.setUncheck(uncheck);
			ledgerCost.setRemark(remark);
			
			ledgerCostMapper.updateByPrimaryKey(ledgerCost);
		}
		
		response.setData(ledgerCost);
		return response.build();
	}
	
	@ApiOperation(value = "删除台账")
	@RequestMapping(value = "/delete")
	public Response delete(
			@ApiParam(value = "台账ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();
		
		ledgerCostMapper.deleteByPrimaryKey(id);
		
		return response.build();
	}
}
