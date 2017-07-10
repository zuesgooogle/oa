package com.s4game.oa.manager.web;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.entity.PlanAssertMonth;
import com.s4game.oa.common.mapper.PlanAssertMonthMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/plan/assert/month")
@Api(value = "/plan/assert/month", description = "月度资产购置计划")
public class PlanAssertMonthController {

	@Autowired
	private PlanAssertMonthMapper planAssertMonthMapper;

	@Autowired
	private PageService<PlanAssertMonth> pageService;
	
	@ApiOperation(value = "资产购置列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<PlanAssertMonth> pageInfo = pageService.selectPage(new PlanAssertMonth(), new Page<PlanAssertMonth>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新资产购置")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "资产购置Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "资产Id") @RequestParam(value = "assertId", required = true) Integer assertId,
			@ApiParam(value = "资产名称") @RequestParam(value = "assertName", required = true) String assertName,
			@ApiParam(value = "年度计划购置数量") @RequestParam(value = "yearTotalNum", required = true) Integer yearTotalNum,
			@ApiParam(value = "已购置数量") @RequestParam(value = "boughtNum", required = true) Integer boughtNum,
			@ApiParam(value = "本月计划数量") @RequestParam(value = "planNum", required = true) Integer planNum,
			@ApiParam(value = "单价") @RequestParam(value = "unitPrice", required = true) BigDecimal unitPrice,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark) {
		
		Response.Builder response = Response.newBuilder();
		
		PlanAssertMonth planAssert = new PlanAssertMonth();
		planAssert.setYear(year);
		planAssert.setMonth(month);
		planAssert.setAssertId(assertId);
		planAssert.setAssertName(assertName);
		planAssert.setYearTotalNum(yearTotalNum);
		planAssert.setBoughtNum(boughtNum);
		planAssert.setPlanNum(planNum);
		planAssert.setUnitPrice(unitPrice);
		planAssert.setRemark(remark);
		
		if (WebUtils.isAdd(id)) {
			planAssert.setCreateTime(new Date());
			planAssertMonthMapper.insert(planAssert);
		} else {
			planAssert.setId(id);
			planAssertMonthMapper.updateByPrimaryKeySelective(planAssert);
		}

		response.setData(planAssert);
		return response.build();
	}

	@ApiOperation(value = "删除资金支出")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "资金支出Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = planAssertMonthMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
