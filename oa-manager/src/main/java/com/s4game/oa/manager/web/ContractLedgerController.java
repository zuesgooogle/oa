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
import com.s4game.oa.common.entity.ContractLedger;
import com.s4game.oa.common.mapper.ContractLedgerMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/ledger/contract")
@Api(value = "ledger/contract", description = "合同台账")
public class ContractLedgerController {

	@Autowired
	private ContractLedgerMapper ContractLedgerManager;

	@Autowired
	private PageService<ContractLedger> pageService;
	
	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit) {
		Response.Builder response = Response.newBuilder();

		PageInfo<ContractLedger> pageInfo = pageService.selectPage(new ContractLedger(), new Page<ContractLedger>(page, limit));
		response.setData(pageInfo.getList());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id,
			@ApiParam(value = "合同文件") @RequestParam(value = "contractFile", required = true) String contractFile,
			@ApiParam(value = "合同状态") @RequestParam(value = "contractState", required = true) Short contractState,
			@ApiParam(value = "公司") @RequestParam(value = "company", required = true) Short company,
			@ApiParam(value = "片区/地块名称") @RequestParam(value = "areaLandId", required = true) Integer areaLandId,
			@ApiParam(value = "收入/支出") @RequestParam(value = "incomeType", required = true) Short incomeType,
			@ApiParam(value = "开发/非开发") @RequestParam(value = "developType", required = true) Short developType,
			@ApiParam(value = "成本科目") @RequestParam(value = "subjectId", required = true) Integer subjectId,
			@ApiParam(value = "合同名称") @RequestParam(value = "contractName", required = true) String contractName,
			@ApiParam(value = "合同编号") @RequestParam(value = "contractSerial", required = true) String contractSerial,
			@ApiParam(value = "合同内容") @RequestParam(value = "contractContent", required = false) String contractContent,
			@ApiParam(value = "合同金额") @RequestParam(value = "contractAmount", required = true) BigDecimal contractAmount,
			@ApiParam(value = "金额状态") @RequestParam(value = "contractAmountState", required = false) String contractAmountState,
			@ApiParam(value = "合同付款条件") @RequestParam(value = "contractPayCondition", required = false) String contractPayCondition,
			@ApiParam(value = "签约方") @RequestParam(value = "signatory", required = true) String signatory,
			@ApiParam(value = "合同签订时间") @RequestParam(value = "signTime", required = true) Date signTime,
			@ApiParam(value = "合同工期") @RequestParam(value = "timelimit", required = false) String timelimit,
			@ApiParam(value = "联系人") @RequestParam(value = "linkman", required = true) String linkman,
			@ApiParam(value = "联系人电话") @RequestParam(value = "phone", required = true) String phone,
			@ApiParam(value = "招标情况") @RequestParam(value = "bidType", required = true) Short bidType,
			@ApiParam(value = "相关审批") @RequestParam(value = "relateApproveFile", required = false) String relateApproveFile,
			@ApiParam(value = "方案") @RequestParam(value = "solutionFile", required = false) String solutionFile,
			@ApiParam(value = "预算审批") @RequestParam(value = "budgetApproveFile", required = false) String budgetApproveFile,
			@ApiParam(value = "档案") @RequestParam(value = "record", required = false) String record,
			@ApiParam(value = "相关部门") @RequestParam(value = "relateDepartment", required = false) String relateDepartment,
			@ApiParam(value = "财务登记") @RequestParam(value = "financeRegister", required = false) String financeRegister,
			@ApiParam(value = "经营存档") @RequestParam(value = "operateRegister", required = false) String operateRegister,
			@ApiParam(value = "履约金额") @RequestParam(value = "performanceAmount", required = false) BigDecimal performanceAmount,
			@ApiParam(value = "结算总金额") @RequestParam(value = "settleAmount", required = false) BigDecimal settleAmount,
			@ApiParam(value = "保修金总金额") @RequestParam(value = "premiumAmount", required = false) BigDecimal premiumAmount,
			@ApiParam(value = "累计付款金额") @RequestParam(value = "paidAmount", required = false) BigDecimal paidAmount,
			@ApiParam(value = "履约评价得分") @RequestParam(value = "performanceEvaluate", required = false) String performanceEvaluate,
			@ApiParam(value = "付款比例") @RequestParam(value = "paidPercent", required = false) String paidPercent,
			@ApiParam(value = "发起部门") @RequestParam(value = "departmentId", required = true) Long departmentId,
			@ApiParam(value = "发起人") @RequestParam(value = "userId", required = true) Long userId,
			@ApiParam(value = "档案盒编号") @RequestParam(value = "fileBoxId", required = true) String fileBoxId,
			@ApiParam(value = "档案编号") @RequestParam(value = "fileId", required = true) String fileId,
			@ApiParam(value = "备注") @RequestParam(value = "remark", required = false) String remark
			) {
		Response.Builder response = Response.newBuilder();
		
		ContractLedger ledger = null;
		if (WebUtils.isAdd(id)) {
			ledger = new ContractLedger();
			ledger.setContractFile(contractFile);
			ledger.setContractState(contractState);
			ledger.setCompany(company);
			ledger.setAreaLandId(areaLandId);
			ledger.setSubjectId(subjectId);
			ledger.setIncomeType(incomeType);
			ledger.setDevelopType(developType);
			ledger.setContractName(contractName);
			ledger.setContractSerial(contractSerial);
			ledger.setContractContent(contractContent);
			ledger.setContractAmount(contractAmount);
			ledger.setContractAmountState(contractAmountState);
			ledger.setContractPayCondition(contractPayCondition);
			ledger.setSignatory(signatory);
			ledger.setSignTime(signTime);
			ledger.setLinkman(linkman);
			ledger.setPhone(phone);
			ledger.setTimelimit(timelimit);
			ledger.setBidType(bidType);
			ledger.setRelateApproveFile(relateApproveFile);
			ledger.setSolutionFile(solutionFile);
			ledger.setBudgetApproveFile(budgetApproveFile);
			ledger.setRecord(record);
			ledger.setRelateDepartment(relateDepartment);
			ledger.setFinanceRegister(financeRegister);
			ledger.setOperateRegister(operateRegister);
			ledger.setPerformanceAmount(performanceAmount);
			ledger.setSettleAmount(settleAmount);
			ledger.setPremiumAmount(premiumAmount);
			ledger.setPerformanceEvaluate(performanceEvaluate);
			ledger.setPaidAmount(paidAmount);
			ledger.setPaidPercent(paidPercent);
			ledger.setDepartmentId(departmentId);
			ledger.setUserId(userId);
			ledger.setFileBoxId(fileBoxId);
			ledger.setFileId(fileId);
			ledger.setRemark(remark);
			
			ledger.setCreateTime(new Date());

			ContractLedgerManager.insert(ledger);
		} else {
			ledger = ContractLedgerManager.selectByPrimaryKey(id);
			ledger.setContractFile(contractFile);
			ledger.setContractState(contractState);
			ledger.setCompany(company);
			ledger.setAreaLandId(areaLandId);
			ledger.setSubjectId(subjectId);
			ledger.setIncomeType(incomeType);
			ledger.setDevelopType(developType);
			ledger.setContractName(contractName);
			ledger.setContractSerial(contractSerial);
			ledger.setContractContent(contractContent);
			ledger.setContractAmount(contractAmount);
			ledger.setContractAmountState(contractAmountState);
			ledger.setContractPayCondition(contractPayCondition);
			ledger.setSignatory(signatory);
			ledger.setSignTime(signTime);
			ledger.setLinkman(linkman);
			ledger.setPhone(phone);
			ledger.setTimelimit(timelimit);
			ledger.setBidType(bidType);
			ledger.setRelateApproveFile(relateApproveFile);
			ledger.setSolutionFile(solutionFile);
			ledger.setBudgetApproveFile(budgetApproveFile);
			ledger.setRecord(record);
			ledger.setRelateDepartment(relateDepartment);
			ledger.setFinanceRegister(financeRegister);
			ledger.setOperateRegister(operateRegister);
			ledger.setPerformanceAmount(performanceAmount);
			ledger.setSettleAmount(settleAmount);
			ledger.setPremiumAmount(premiumAmount);
			ledger.setPerformanceEvaluate(performanceEvaluate);
			ledger.setPaidAmount(paidAmount);
			ledger.setPaidPercent(paidPercent);
			ledger.setDepartmentId(departmentId);
			ledger.setUserId(userId);
			ledger.setFileBoxId(fileBoxId);
			ledger.setFileId(fileId);
			ledger.setRemark(remark);
			ContractLedgerManager.updateByPrimaryKey(ledger);
		}

		response.setData(ledger);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "Id") @RequestParam(value = "id", required = true) Long id) {
		Response.Builder response = Response.newBuilder();

		int result = ContractLedgerManager.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
