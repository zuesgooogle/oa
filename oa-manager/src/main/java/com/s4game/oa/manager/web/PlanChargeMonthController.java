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
import com.s4game.oa.common.entity.PlanChargeMonth;
import com.s4game.oa.common.mapper.PlanChargeMonthMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
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
	
	@ApiOperation(value = "费用列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<PlanChargeMonth> pageInfo = pageService.selectPage(new PlanChargeMonth(), new Page<PlanChargeMonth>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新费用")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "费用Id") @RequestParam(value = "id", required = true) Long id,
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
		
		PlanChargeMonth month = null;
		if (WebUtils.isAdd(id)) {
			month = new PlanChargeMonth();
			month.setCompany(company);
			month.setDepartmentId(departmentId);
			month.setProjectId(projectId);
			month.setSubjectId(subjectId);
			month.setChargeName(chargeName);
			month.setYearAmount(yearAmount);
			month.setPaiedAmount(paiedAmount);
			month.setPlanAmount(planAmount);
			month.setActualAmount(actualAmount);
			month.setRemark(remark);
			month.setCreateTime(new Date());

			planChargeMonthMapper.insert(month);
		} else {
			month = planChargeMonthMapper.selectByPrimaryKey(id);
			month.setCompany(company);
			month.setDepartmentId(departmentId);
			month.setProjectId(projectId);
			month.setSubjectId(subjectId);
			month.setChargeName(chargeName);
			month.setYearAmount(yearAmount);
			month.setPaiedAmount(paiedAmount);
			month.setPlanAmount(planAmount);
			month.setActualAmount(actualAmount);
			month.setRemark(remark);
			
			planChargeMonthMapper.updateByPrimaryKey(month);
		}

		response.setData(month);
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
