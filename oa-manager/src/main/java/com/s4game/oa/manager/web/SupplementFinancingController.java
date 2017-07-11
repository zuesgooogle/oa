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
import com.s4game.oa.common.entity.SupplementFinancing;
import com.s4game.oa.common.mapper.SupplementFinancingMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IFilterService;
import com.s4game.oa.manager.utils.FilterUtils;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/supplement/financing")
@Api(value = "/supplement/financing", description = "补充数据-财务")
public class SupplementFinancingController {

	@Autowired
	private SupplementFinancingMapper supplementFinancingMapper;

	@Autowired
	private PageService<SupplementFinancing> pageService;
	
	@Autowired
	private IFilterService filterService;
	
	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "过滤参数") @RequestParam(value = "filter", required = false) String filter) {
		Response.Builder response = Response.newBuilder();

		SupplementFinancing params = new SupplementFinancing();

		Map<String, Filter> filters = filterService.decode(filter);
		params.setMonths(FilterUtils.getList(filters, "month"));
		
		PageInfo<SupplementFinancing> pageInfo = pageService.selectPage(params, new Page<SupplementFinancing>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "类别") @RequestParam(value = "type", required = true) Byte type,
			@ApiParam(value = "资产") @RequestParam(value = "asserts", required = true) BigDecimal asserts,
			@ApiParam(value = "负债") @RequestParam(value = "debt", required = true) BigDecimal debt,
			@ApiParam(value = "资产负债率") @RequestParam(value = "debtRatio", required = true) BigDecimal debtRatio,
			@ApiParam(value = "所有制权益") @RequestParam(value = "equity", required = true) BigDecimal equity,
			@ApiParam(value = "净资产收益率") @RequestParam(value = "equityRatio", required = true) BigDecimal equityRatio,
			@ApiParam(value = "管理费") @RequestParam(value = "maintenance", required = true) BigDecimal maintenance,
			@ApiParam(value = "利润") @RequestParam(value = "profit", required = true) BigDecimal profit,
			@ApiParam(value = "营业收入") @RequestParam(value = "taking", required = true) BigDecimal taking,
			@ApiParam(value = "金融机构借款本金") @RequestParam(value = "borrowAmount", required = true) BigDecimal borrowAmount,
			@ApiParam(value = "其他支出") @RequestParam(value = "otherAmount", required = true) BigDecimal otherAmount) {
		Response.Builder response = Response.newBuilder();
		
		SupplementFinancing financing = new SupplementFinancing();
		financing.setYear(year);
		financing.setMonth(month);
		financing.setType(type);
		financing.setAsserts(asserts);
		financing.setDebt(debtRatio);
		financing.setDebtRatio(debtRatio);
		financing.setEquity(equityRatio);
		financing.setEquityRatio(equityRatio);
		financing.setMaintenance(maintenance);
		financing.setProfit(profit);
		financing.setTaking(taking);
		financing.setBorrowAmount(borrowAmount);
		financing.setOtherAmount(otherAmount);

		if (WebUtils.isAdd(id)) {
			financing.setCreateTime(new Date());
			supplementFinancingMapper.insert(financing);
		} else {
			financing.setId(id);
			supplementFinancingMapper.updateByPrimaryKeySelective(financing);
		}

		response.setData(financing);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = supplementFinancingMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
	
	@ApiOperation(value = "统计")
	@RequestMapping(value = "/report", method = { RequestMethod.GET, RequestMethod.POST })
	public Response report(@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = false) Short month) {
		Response.Builder response = Response.newBuilder();

		SupplementFinancing params = new SupplementFinancing();
		params.setYear(year);
		params.setMonth(month);
		
		List<SupplementFinancing> result = supplementFinancingMapper.selectReport(params);

		response.setData(result);
		return response.build();
	}
}
