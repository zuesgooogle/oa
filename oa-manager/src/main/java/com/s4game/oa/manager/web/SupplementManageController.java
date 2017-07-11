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
import com.s4game.oa.common.entity.SupplementManage;
import com.s4game.oa.common.mapper.SupplementManageMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.service.IFilterService;
import com.s4game.oa.manager.utils.FilterUtils;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/supplement/manage")
@Api(value = "/supplement/manage", description = "补充数据-经营")
public class SupplementManageController {

	@Autowired
	private SupplementManageMapper supplementManageMapper;

	@Autowired
	private PageService<SupplementManage> pageService;

	@Autowired
	private IFilterService filterService;

	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "过滤参数") @RequestParam(value = "filter", required = false) String filter) {
		Response.Builder response = Response.newBuilder();

		SupplementManage params = new SupplementManage();

		Map<String, Filter> filters = filterService.decode(filter);
		params.setMonths(FilterUtils.getList(filters, "month"));

		PageInfo<SupplementManage> pageInfo = pageService.selectPage(params, new Page<SupplementManage>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新费用")
	@RequestMapping(value = "/update", method = { RequestMethod.GET, RequestMethod.POST })
	public Response update(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = true) Short month,
			@ApiParam(value = "类别") @RequestParam(value = "type", required = true) Byte type,
			@ApiParam(value = "投资额") @RequestParam(value = "investmentAmount", required = true) BigDecimal investmentAmount,
			@ApiParam(value = "综合经营额") @RequestParam(value = "compositeAmount", required = true) BigDecimal compositeAmount) {
		Response.Builder response = Response.newBuilder();

		SupplementManage manage = new SupplementManage();
		manage.setYear(year);
		manage.setMonth(month);
		manage.setType(type);
		manage.setInvestmentAmount(investmentAmount);
		manage.setCompositeAmount(compositeAmount);

		if (WebUtils.isAdd(id)) {
			manage.setCreateTime(new Date());
			supplementManageMapper.insert(manage);
		} else {
			manage.setId(id);
			supplementManageMapper.updateByPrimaryKeySelective(manage);
		}

		response.setData(manage);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = supplementManageMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}

	@ApiOperation(value = "统计")
	@RequestMapping(value = "/report", method = { RequestMethod.GET, RequestMethod.POST })
	public Response report(@ApiParam(value = "年") @RequestParam(value = "year", required = true) Short year,
			@ApiParam(value = "月") @RequestParam(value = "month", required = false) Short month) {
		Response.Builder response = Response.newBuilder();

		SupplementManage params = new SupplementManage();
		params.setYear(year);
		params.setMonth(month);
		
		List<SupplementManage> result = supplementManageMapper.selectReport(params);

		response.setData(result);
		return response.build();
	}
}
