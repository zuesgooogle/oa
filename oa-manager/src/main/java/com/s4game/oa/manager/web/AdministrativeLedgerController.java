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
import com.s4game.oa.common.entity.AdministrativeLedger;
import com.s4game.oa.common.mapper.AdministrativeLedgerMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/ledger/administrative")
@Api(value = "ledger/administrative", description = "行政性收费台账")
public class AdministrativeLedgerController {

	@Autowired
	private AdministrativeLedgerMapper administrativeLedgerManager;

	@Autowired
	private PageService<AdministrativeLedger> pageService;
	
	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false) Integer limit
			) {
		Response.Builder response = Response.newBuilder();

		PageInfo<AdministrativeLedger> pageInfo = pageService.selectPage(new AdministrativeLedger(), new Page<AdministrativeLedger>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "公司") @RequestParam(value = "company", required = true) Integer company,
			@ApiParam(value = "成本科目") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "名称") @RequestParam(value = "name", required = true) String name,
			@ApiParam(value = "内容") @RequestParam(value = "content", required = true) String content,
			@ApiParam(value = "应支付金额") @RequestParam(value = "payableAmount", required = true) BigDecimal payableAmount,
			@ApiParam(value = "付款条件") @RequestParam(value = "payCondition", required = true) String payCondition,
			@ApiParam(value = "签约方") @RequestParam(value = "signatory", required = true) String signatory,
			@ApiParam(value = "合同签订时间") @RequestParam(value = "signTime", required = true) Date signTime,
			@ApiParam(value = "联系人") @RequestParam(value = "linkman", required = true) String linkman,
			@ApiParam(value = "联系人电话") @RequestParam(value = "phone", required = true) String phone,
			@ApiParam(value = "累计付款金额") @RequestParam(value = "payTotal", required = true) BigDecimal payTotal,
			@ApiParam(value = "发起部门") @RequestParam(value = "departmentId", required = true) Integer departmentId,
			@ApiParam(value = "发起人") @RequestParam(value = "userId", required = true) Long userId,
			@ApiParam(value = "档案盒编号") @RequestParam(value = "fileBoxId", required = true) String fileBoxId,
			@ApiParam(value = "档案编号") @RequestParam(value = "fileId", required = true) String fileId,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark
			) {
		Response.Builder response = Response.newBuilder();
		
		AdministrativeLedger AdministrativeLedger = null;
		if (WebUtils.isAdd(id)) {
			AdministrativeLedger = new AdministrativeLedger();
			AdministrativeLedger.setName(name);
			AdministrativeLedger.setCreateTime(new Date());

			administrativeLedgerManager.insert(AdministrativeLedger);
		} else {
			AdministrativeLedger = administrativeLedgerManager.selectByPrimaryKey(id);
			AdministrativeLedger.setName(name);
			administrativeLedgerManager.updateByPrimaryKey(AdministrativeLedger);
		}

		response.setData(AdministrativeLedger);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = administrativeLedgerManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
