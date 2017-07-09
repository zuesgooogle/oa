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
import com.s4game.oa.common.entity.PlanMoneyOutMonth;
import com.s4game.oa.common.mapper.PlanMoneyOutMonthMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IFilterService;
import com.s4game.oa.manager.utils.FilterUtils;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/plan/money/out/month")
@Api(value = "/plan/money/out/month", description = "月度资金支出计划")
public class PlanMoneyOutMonthController {

	@Autowired
	private PlanMoneyOutMonthMapper planMoneyOutMonthMapper;

	@Autowired
	private PageService<PlanMoneyOutMonth> pageService;
	
	@Autowired
	private IFilterService filterService;
	
	@ApiOperation(value = "资金支出列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "过滤参数") @RequestParam(value = "filter", required = false) String filter) {
		Response.Builder response = Response.newBuilder();

		PlanMoneyOutMonth params = new PlanMoneyOutMonth();
		
		Map<String, Filter> filters = filterService.decode(filter);
		params.setMonths(FilterUtils.getList(filters, "month"));
		
		PageInfo<PlanMoneyOutMonth> pageInfo = pageService.selectPage(params, new Page<PlanMoneyOutMonth>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新资金支出")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "资金支出Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "所属公司") @RequestParam(value = "company", required = true) Integer company,
			@ApiParam(value = "部门") @RequestParam(value = "departmentId", required = true) Integer departmentId,
			@ApiParam(value = "项目") @RequestParam(value = "projectId", required = true) Integer projectId,
			@ApiParam(value = "成本科目") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "收款单位") @RequestParam(value = "receiver", required = true) String receiver,
			@ApiParam(value = "合同名称") @RequestParam(value = "contractName", required = true) String contractName,
			@ApiParam(value = "合同金额") @RequestParam(value = "contractAmount", required = true) BigDecimal contractAmount,
			@ApiParam(value = "已支付金额") @RequestParam(value = "paidAmount", required = true) BigDecimal paidAmount,
			@ApiParam(value = "本月计划支付") @RequestParam(value = "planAmount", required = true) BigDecimal planAmount,
			@ApiParam(value = "本月实际支付") @RequestParam(value = "actualAmount", required = true) BigDecimal actualAmount,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();
		
		PlanMoneyOutMonth moneyOut = new PlanMoneyOutMonth();
		moneyOut.setYear(year);
		moneyOut.setMonth(month);
		moneyOut.setCompany(company);
		moneyOut.setDepartmentId(departmentId);
		moneyOut.setProjectId(projectId);
		moneyOut.setSubjectId(subjectId);
		moneyOut.setReceiver(receiver);
		moneyOut.setContractName(contractName);
		moneyOut.setContractAmount(contractAmount);
		moneyOut.setPaidAmount(paidAmount);
		moneyOut.setPlanAmount(planAmount);
		moneyOut.setActualAmount(actualAmount);
		moneyOut.setRemark(remark);

		if (WebUtils.isAdd(id)) {
			moneyOut.setCreateTime(new Date());

			planMoneyOutMonthMapper.insert(moneyOut);
		} else {
			moneyOut.setId(id);
			planMoneyOutMonthMapper.updateByPrimaryKeySelective(moneyOut);
		}

		response.setData(moneyOut);
		return response.build();
	}

	@ApiOperation(value = "删除资金支出")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "资金支出Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = planMoneyOutMonthMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
