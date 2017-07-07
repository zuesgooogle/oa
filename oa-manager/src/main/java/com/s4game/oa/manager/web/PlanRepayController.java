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
import com.s4game.oa.common.constants.PageConstants;
import com.s4game.oa.common.entity.PlanRepay;
import com.s4game.oa.common.mapper.PlanRepayMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/plan/repay")
@Api(value = "/plan/repay", description = "还款计划")
public class PlanRepayController {

	@Autowired
	private PlanRepayMapper planRepayMapper;

	@Autowired
	private PageService<PlanRepay> pageService;
	
	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit) {
		Response.Builder response = Response.newBuilder();

		PageInfo<PlanRepay> pageInfo = pageService.selectPage(new PlanRepay(), new Page<PlanRepay>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "资产购置Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "银行") @RequestParam(value = "bankId", required = true) Integer bankId,
			@ApiParam(value = "项目") @RequestParam(value = "projectName", required = true) String projectName,
			@ApiParam(value = "合同") @RequestParam(value = "contractName", required = true) String contractName,
			@ApiParam(value = "累计已放款金额") @RequestParam(value = "totalLoanAmount", required = true) BigDecimal totalLoanAmount,
			@ApiParam(value = "本月计划还款金额") @RequestParam(value = "planAmount", required = true) BigDecimal planAmount,
			@ApiParam(value = "计划还款贷款余额") @RequestParam(value = "planRemainLoanAmount", required = true) BigDecimal planRemainLoanAmount,
			@ApiParam(value = "实际本月还款金额") @RequestParam(value = "actualAmount", required = true) BigDecimal actualAmount,
			@ApiParam(value = "实际还款贷款余额") @RequestParam(value = "actualRemainLoanAmount", required = true) BigDecimal actualRemainLoanAmount,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();
		
		PlanRepay repay = null;
		if (WebUtils.isAdd(id)) {
			repay = new PlanRepay();
			repay.setYear(year);
			repay.setMonth(month);
			repay.setBankId(bankId);
			repay.setProjectName(projectName);
			repay.setContractName(contractName);
			repay.setTotalLoanAmount(totalLoanAmount);
			repay.setPlanAmount(planAmount);
			repay.setPlanRemainLoanAmount(planRemainLoanAmount);
			repay.setActualAmount(actualAmount);
			repay.setActualRemainLoanAmount(actualRemainLoanAmount);
			repay.setRemark(remark);
			repay.setCreateTime(new Date());

			planRepayMapper.insert(repay);
		} else {
			repay = planRepayMapper.selectByPrimaryKey(id);
			repay.setYear(year);
			repay.setMonth(month);
			repay.setBankId(bankId);
			repay.setProjectName(projectName);
			repay.setContractName(contractName);
			repay.setTotalLoanAmount(totalLoanAmount);
			repay.setPlanAmount(planAmount);
			repay.setPlanRemainLoanAmount(planRemainLoanAmount);
			repay.setActualAmount(actualAmount);
			repay.setActualRemainLoanAmount(actualRemainLoanAmount);
			repay.setRemark(remark);
			
			planRepayMapper.updateByPrimaryKey(repay);
		}

		response.setData(repay);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = planRepayMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
