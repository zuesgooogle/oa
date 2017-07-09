package com.s4game.oa.manager.web;

import java.math.BigDecimal;
import java.util.Date;
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
import com.s4game.oa.common.entity.PlanChargeMonth;
import com.s4game.oa.common.mapper.PlanChargeMonthMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IFilterService;
import com.s4game.oa.manager.utils.FilterUtils;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/plan/charge/month")
@Api(value = "/plan/charge/month", description = "月度费用计划")
public class PlanChargeMonthController {

	@Autowired
	private PlanChargeMonthMapper planChargeMonthMapper;

	@Autowired
	private PageService<PlanChargeMonth> pageService;
	
	@Autowired
	private IFilterService filterService;
	
	@ApiOperation(value = "费用列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "过滤参数") @RequestParam(value = "filter", required = false) String filter) {
		Response.Builder response = Response.newBuilder();

		PlanChargeMonth params = new PlanChargeMonth();

		Map<String, Filter> filters = filterService.decode(filter);
		params.setMonths(FilterUtils.getList(filters, "month"));
		
		PageInfo<PlanChargeMonth> pageInfo = pageService.selectPage(params, new Page<PlanChargeMonth>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新费用")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "费用Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "所属公司") @RequestParam(value = "company", required = true) Integer company,
			@ApiParam(value = "部门") @RequestParam(value = "departmentId", required = true) Integer departmentId,
			@ApiParam(value = "项目") @RequestParam(value = "projectId", required = true) Integer projectId,
			@ApiParam(value = "成本科目") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "费用名称") @RequestParam(value = "chargeName", required = true) String chargeName,
			@ApiParam(value = "年度计划金额") @RequestParam(value = "yearAmount", required = true) BigDecimal yearAmount,
			@ApiParam(value = "已支付金额") @RequestParam(value = "paiedAmount", required = true) BigDecimal paiedAmount,
			@ApiParam(value = "本月计划金额") @RequestParam(value = "planAmount", required = true) BigDecimal planAmount,
			@ApiParam(value = "本月实际支付") @RequestParam(value = "actualAmount", required = true) BigDecimal actualAmount,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();
		
		PlanChargeMonth charge = new PlanChargeMonth();
		charge.setYear(year);
		charge.setMonth(month);
		charge.setCompany(company);
		charge.setDepartmentId(departmentId);
		charge.setProjectId(projectId);
		charge.setSubjectId(subjectId);
		charge.setChargeName(chargeName);
		charge.setYearAmount(yearAmount);
		charge.setPaiedAmount(paiedAmount);
		charge.setPlanAmount(planAmount);
		charge.setActualAmount(actualAmount);
		charge.setRemark(remark);

		if (WebUtils.isAdd(id)) {
			charge.setCreateTime(new Date());
			planChargeMonthMapper.insert(charge);
		} else {
			charge.setId(id);
			planChargeMonthMapper.updateByPrimaryKeySelective(charge);
		}

		response.setData(charge);
		return response.build();
	}

	@ApiOperation(value = "删除资金支出")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "资金支出Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = planChargeMonthMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
