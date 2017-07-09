package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class ZhiyeLedgerCost {
    private Long id;

    private Short year;

    private Short month;

    private Integer landId;

    private Integer subjectId;

    private String projectName;

    private BigDecimal expectInvest;

    private BigDecimal contractAmount;

    private BigDecimal performanceAmount;

    private BigDecimal paidAmount;

    private BigDecimal settledAccount;

    private String remark;

    private Date createTime;

    private Date updateTime;
    
    @JsonIgnore
    private List<Integer> landIds;
    
    @JsonIgnore
    private List<Integer> subjectIds;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Short getYear() {
        return year;
    }

    public void setYear(Short year) {
        this.year = year;
    }

    public Short getMonth() {
        return month;
    }

    public void setMonth(Short month) {
        this.month = month;
    }

    public Integer getLandId() {
        return landId;
    }

    public void setLandId(Integer landId) {
        this.landId = landId;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    public BigDecimal getExpectInvest() {
        return expectInvest;
    }

    public void setExpectInvest(BigDecimal expectInvest) {
        this.expectInvest = expectInvest;
    }

    public BigDecimal getContractAmount() {
        return contractAmount;
    }

    public void setContractAmount(BigDecimal contractAmount) {
        this.contractAmount = contractAmount;
    }

    public BigDecimal getPerformanceAmount() {
        return performanceAmount;
    }

    public void setPerformanceAmount(BigDecimal performanceAmount) {
        this.performanceAmount = performanceAmount;
    }

    public BigDecimal getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(BigDecimal paidAmount) {
        this.paidAmount = paidAmount;
    }

    public BigDecimal getSettledAccount() {
        return settledAccount;
    }

    public void setSettledAccount(BigDecimal settledAccount) {
        this.settledAccount = settledAccount;
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

	public List<Integer> getLandIds() {
		return landIds;
	}

	public void setLandIds(List<Integer> landIds) {
		this.landIds = landIds;
	}

	public List<Integer> getSubjectIds() {
		return subjectIds;
	}

	public void setSubjectIds(List<Integer> subjectIds) {
		this.subjectIds = subjectIds;
	}
    
    
}