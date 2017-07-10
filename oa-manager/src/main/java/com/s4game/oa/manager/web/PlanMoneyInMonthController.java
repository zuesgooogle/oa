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
import com.s4game.oa.common.entity.PlanMoneyInMonth;
import com.s4game.oa.common.mapper.PlanMoneyInMonthMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/plan/money/in/month")
@Api(value = "/plan/money/in/month", description = "月度收入计划")
public class PlanMoneyInMonthController {

	@Autowired
	private PlanMoneyInMonthMapper planMoneyInMonthMapper;

	@Autowired
	private PageService<PlanMoneyInMonth> pageService;
	
	@ApiOperation(value = "收入列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<PlanMoneyInMonth> pageInfo = pageService.selectPage(new PlanMoneyInMonth(), new Page<PlanMoneyInMonth>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新收入")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "收入Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "所属公司") @RequestParam(value = "company", required = true) Integer company,
			@ApiParam(value = "部门") @RequestParam(value = "departmentId", required = true) Integer departmentId,
			@ApiParam(value = "项目") @RequestParam(value = "projectId", required = true) Integer projectId,
			@ApiParam(value = "成本科目") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "单位名称") @RequestParam(value = "organizer", required = true) String organizer,
			@ApiParam(value = "合同名称") @RequestParam(value = "contractName", required = true) String contractName,
			@ApiParam(value = "全年计划总额") @RequestParam(value = "total", required = true) BigDecimal total,
			@ApiParam(value = "本月计划支付") @RequestParam(value = "planAmount", required = true) BigDecimal planAmount,
			@ApiParam(value = "本月实际支付") @RequestParam(value = "actualAmount", required = true) BigDecimal actualAmount,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();
		
		PlanMoneyInMonth money = new PlanMoneyInMonth();
		money.setYear(year);
		money.setMonth(month);
		money.setCompany(company);
		money.setDepartmentId(departmentId);
		money.setProjectId(projectId);
		money.setSubjectId(subjectId);
		money.setContractName(contractName);
		money.setOrganizer(organizer);
		money.setTotal(total);
		money.setPlanAmount(planAmount);
		money.setActualAmount(actualAmount);
		
		if (WebUtils.isAdd(id)) {
			money.setCreateTime(new Date());
			planMoneyInMonthMapper.insert(money);
		} else {
			money.setId(id);;
			planMoneyInMonthMapper.updateByPrimaryKeySelective(money);
		}

		response.setData(money);
		return response.build();
	}

	@ApiOperation(value = "删除收入")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "收入Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = planMoneyInMonthMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
