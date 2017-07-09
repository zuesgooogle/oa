package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class ContractLedger {
    private Long id;

    private String contractFile;

    private Short contractState;

    private Short company;

    private Integer areaLandId;

    private Short incomeType;

    private Short developType;

    private Integer subjectId;

    private String contractName;

    private String contractSerial;

    private String contractContent;

    private BigDecimal contractAmount;

    private String contractAmountState;

    private String contractPayCondition;

    private String signatory;

    private Date signTime;

    private String timelimit;

    private String linkman;

    private String phone;

    private Short bidType;

    private String relateApproveFile;

    private String solutionFile;

    private String budgetApproveFile;

    private String record;

    private String relateDepartment;

    private String financeRegister;

    private String operateRegister;

    private BigDecimal performanceAmount;

    private BigDecimal settleAmount;

    private BigDecimal premiumAmount;

    private String performanceEvaluate;

    private BigDecimal paidAmount;

    private String paidPercent;

    private Long departmentId;

    private Long userId;

    private String fileBoxId;

    private String fileId;

    private String remark;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContractFile() {
        return contractFile;
    }

    public void setContractFile(String contractFile) {
        this.contractFile = contractFile == null ? null : contractFile.trim();
    }

    public Short getContractState() {
        return contractState;
    }

    public void setContractState(Short contractState) {
        this.contractState = contractState;
    }

    public Short getCompany() {
        return company;
    }

    public void setCompany(Short company) {
        this.company = company;
    }

    public Integer getAreaLandId() {
        return areaLandId;
    }

    public void setAreaLandId(Integer areaLandId) {
        this.areaLandId = areaLandId;
    }

    public Short getIncomeType() {
        return incomeType;
    }

    public void setIncomeType(Short incomeType) {
        this.incomeType = incomeType;
    }

    public Short getDevelopType() {
        return developType;
    }

    public void setDevelopType(Short developType) {
        this.developType = developType;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName == null ? null : contractName.trim();
    }

    public String getContractSerial() {
        return contractSerial;
    }

    public void setContractSerial(String contractSerial) {
        this.contractSerial = contractSerial == null ? null : contractSerial.trim();
    }

    public String getContractContent() {
        return contractContent;
    }

    public void setContractContent(String contractContent) {
        this.contractContent = contractContent == null ? null : contractContent.trim();
    }

    public BigDecimal getContractAmount() {
        return contractAmount;
    }

    public void setContractAmount(BigDecimal contractAmount) {
        this.contractAmount = contractAmount;
    }

    public String getContractAmountState() {
        return contractAmountState;
    }

    public void setContractAmountState(String contractAmountState) {
        this.contractAmountState = contractAmountState == null ? null : contractAmountState.trim();
    }

    public String getContractPayCondition() {
        return contractPayCondition;
    }

    public void setContractPayCondition(String contractPayCondition) {
        this.contractPayCondition = contractPayCondition == null ? null : contractPayCondition.trim();
    }

    public String getSignatory() {
        return signatory;
    }

    public void setSignatory(String signatory) {
        this.signatory = signatory == null ? null : signatory.trim();
    }

    public Date getSignTime() {
        return signTime;
    }

    public void setSignTime(Date signTime) {
        this.signTime = signTime;
    }

    public String getTimelimit() {
        return timelimit;
    }

    public void setTimelimit(String timelimit) {
        this.timelimit = timelimit == null ? null : timelimit.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Short getBidType() {
        return bidType;
    }

    public void setBidType(Short bidType) {
        this.bidType = bidType;
    }

    public String getRelateApproveFile() {
        return relateApproveFile;
    }

    public void setRelateApproveFile(String relateApproveFile) {
        this.relateApproveFile = relateApproveFile == null ? null : relateApproveFile.trim();
    }

    public String getSolutionFile() {
        return solutionFile;
    }

    public void setSolutionFile(String solutionFile) {
        this.solutionFile = solutionFile == null ? null : solutionFile.trim();
    }

    public String getBudgetApproveFile() {
        return budgetApproveFile;
    }

    public void setBudgetApproveFile(String budgetApproveFile) {
        this.budgetApproveFile = budgetApproveFile == null ? null : budgetApproveFile.trim();
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record == null ? null : record.trim();
    }

    public String getRelateDepartment() {
        return relateDepartment;
    }

    public void setRelateDepartment(String relateDepartment) {
        this.relateDepartment = relateDepartment == null ? null : relateDepartment.trim();
    }

    public String getFinanceRegister() {
        return financeRegister;
    }

    public void setFinanceRegister(String financeRegister) {
        this.financeRegister = financeRegister == null ? null : financeRegister.trim();
    }

    public String getOperateRegister() {
        return operateRegister;
    }

    public void setOperateRegister(String operateRegister) {
        this.operateRegister = operateRegister == null ? null : operateRegister.trim();
    }

    public BigDecimal getPerformanceAmount() {
        return performanceAmount;
    }

    public void setPerformanceAmount(BigDecimal performanceAmount) {
        this.performanceAmount = performanceAmount;
    }

    public BigDecimal getSettleAmount() {
        return settleAmount;
    }

    public void setSettleAmount(BigDecimal settleAmount) {
        this.settleAmount = settleAmount;
    }

    public BigDecimal getPremiumAmount() {
        return premiumAmount;
    }

    public void setPremiumAmount(BigDecimal premiumAmount) {
        this.premiumAmount = premiumAmount;
    }

    public String getPerformanceEvaluate() {
        return performanceEvaluate;
    }

    public void setPerformanceEvaluate(String performanceEvaluate) {
        this.performanceEvaluate = performanceEvaluate == null ? null : performanceEvaluate.trim();
    }

    public BigDecimal getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(BigDecimal paidAmount) {
        this.paidAmount = paidAmount;
    }

    public String getPaidPercent() {
        return paidPercent;
    }

    public void setPaidPercent(String paidPercent) {
        this.paidPercent = paidPercent == null ? null : paidPercent.trim();
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFileBoxId() {
        return fileBoxId;
    }

    public void setFileBoxId(String fileBoxId) {
        this.fileBoxId = fileBoxId == null ? null : fileBoxId.trim();
    }

    public String getFileId() {
        return fileId;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId == null ? null : fileId.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}