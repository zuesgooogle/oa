package com.s4game.oa.manager.web;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.constants.PageConstants;
import com.s4game.oa.common.entity.Filter;
import com.s4game.oa.common.entity.ZhiyeLedgerCost;
import com.s4game.oa.common.mapper.ZhiyeLedgerCostMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IFilterService;
import com.s4game.oa.manager.utils.FilterUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/ledger/zhiye/cost")
@Api(value = "/ledger/zhiye/cost", description = "成本台账（置业）")
public class ZhiyeLedgerCostController {

	@Autowired
	private PageService<ZhiyeLedgerCost> pageService;

	@Autowired
	private ZhiyeLedgerCostMapper ledgerCostMapper;

	@Autowired
	private IFilterService filterService;

	@ApiOperation(value = "台账列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "过滤参数") @RequestParam(value = "filter", required = false) String filter) {
		Response.Builder response = Response.newBuilder();

		ZhiyeLedgerCost params = new ZhiyeLedgerCost();
		Map<String, Filter> filters = filterService.decode(filter);
		params.setLandIds(FilterUtils.getList(filters, "landId"));

		PageInfo<ZhiyeLedgerCost> pageInfo = pageService.selectPage(params, new Page<ZhiyeLedgerCost>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新台账")
	@RequestMapping(value = "/update", method = { RequestMethod.GET, RequestMethod.POST })
	public Response update(@ApiParam(value = "台账ID") @RequestParam(value = "id", required = false) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "地块") @RequestParam(value = "landId", required = true) Integer landId,
			@ApiParam(value = "成本科目ID") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "预计投入金额") @RequestParam(value = "expectInvest", required = true) BigDecimal expectInvest,
			@ApiParam(value = "已签合同金额") @RequestParam(value = "contractAmount", required = true) BigDecimal contractAmount,
			@ApiParam(value = "已履约金额") @RequestParam(value = "performanceAmount", required = true) BigDecimal performanceAmount,
			@ApiParam(value = "已付金额") @RequestParam(value = "paidAmount", required = true) BigDecimal paidAmount,
			@ApiParam(value = "已结束金额") @RequestParam(value = "settledAccount", required = true) BigDecimal settledAccount,
			@ApiParam(value = "说明") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();

		ZhiyeLedgerCost ledgerCost = null;
		if (id == null) {
			ledgerCost = new ZhiyeLedgerCost();
			ledgerCost.setYear(year);
			ledgerCost.setMonth(month);
			ledgerCost.setLandId(landId);
			ledgerCost.setSubjectId(subjectId);
			ledgerCost.setExpectInvest(expectInvest);
			ledgerCost.setContractAmount(contractAmount);
			ledgerCost.setPerformanceAmount(performanceAmount);
			ledgerCost.setPaidAmount(paidAmount);
			ledgerCost.setSettledAccount(settledAccount);
			ledgerCost.setRemark(remark);
			ledgerCost.setCreateTime(new Date());

			ledgerCostMapper.insert(ledgerCost);
		} else {
			ledgerCost = ledgerCostMapper.selectByPrimaryKey(id);
			ledgerCost.setYear(year);
			ledgerCost.setMonth(month);
			ledgerCost.setLandId(landId);
			ledgerCost.setSubjectId(subjectId);
			ledgerCost.setExpectInvest(expectInvest);
			ledgerCost.setContractAmount(contractAmount);
			ledgerCost.setPerformanceAmount(performanceAmount);
			ledgerCost.setPaidAmount(paidAmount);
			ledgerCost.setSettledAccount(settledAccount);
			ledgerCost.setRemark(remark);

			ledgerCostMapper.updateByPrimaryKey(ledgerCost);
		}

		response.setData(ledgerCost);
		return response.build();
	}

	@ApiOperation(value = "删除台账")
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public Response delete(@ApiParam(value = "台账ID") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		ledgerCostMapper.deleteByPrimaryKey(id);

		return response.build();
	}

	@ApiOperation(value = "汇总台账")
	@RequestMapping(value = "/report", method = { RequestMethod.GET, RequestMethod.POST })
	public Response report(@ApiParam(value = "年份") @RequestParam(value = "year", required = true) Integer year) {
		Response.Builder response = Response.newBuilder();

		List<ZhiyeLedgerCost> results = ledgerCostMapper.selectReport(year);

		response.setData(results);
		return response.build();
	}
}
