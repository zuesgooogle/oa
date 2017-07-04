package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class FinancingLedger {
    private Long id;

    private Integer year;

    private Integer month;

    private Integer type;

    private Integer bankId;

    private String projectName;

    private BigDecimal amount;

    private BigDecimal financingAmount;

    private BigDecimal totalLending;

    private BigDecimal totalReplayLoan;

    private BigDecimal remainLoan;

    private String deadline;

    private String rate;

    private String guaranty;

    private String keyNode;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public BigDecimal getFinancingAmount() {
        return financingAmount;
    }

    public void setFinancingAmount(BigDecimal financingAmount) {
        this.financingAmount = financingAmount;
    }

    public BigDecimal getTotalLending() {
        return totalLending;
    }

    public void setTotalLending(BigDecimal totalLending) {
        this.totalLending = totalLending;
    }

    public BigDecimal getTotalReplayLoan() {
        return totalReplayLoan;
    }

    public void setTotalReplayLoan(BigDecimal totalReplayLoan) {
        this.totalReplayLoan = totalReplayLoan;
    }

    public BigDecimal getRemainLoan() {
        return remainLoan;
    }

    public void setRemainLoan(BigDecimal remainLoan) {
        this.remainLoan = remainLoan;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline == null ? null : deadline.trim();
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate == null ? null : rate.trim();
    }

    public String getGuaranty() {
        return guaranty;
    }

    public void setGuaranty(String guaranty) {
        this.guaranty = guaranty == null ? null : guaranty.trim();
    }

    public String getKeyNode() {
        return keyNode;
    }

    public void setKeyNode(String keyNode) {
        this.keyNode = keyNode == null ? null : keyNode.trim();
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