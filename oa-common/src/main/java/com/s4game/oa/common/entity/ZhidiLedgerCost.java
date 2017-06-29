package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class ZhidiLedgerCost {
    private Long id;

    private String serialNumber;

    private Integer area;

    private Integer subjectId;

    private String projectName;

    private BigDecimal calculateInvest;

    private BigDecimal expectInvest;

    private BigDecimal totalInvest;

    private BigDecimal auditStatistics;

    private BigDecimal govConfirm;

    private BigDecimal govCheck;

    private BigDecimal uncheck;

    private String remark;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber == null ? null : serialNumber.trim();
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
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

    public BigDecimal getCalculateInvest() {
        return calculateInvest;
    }

    public void setCalculateInvest(BigDecimal calculateInvest) {
        this.calculateInvest = calculateInvest;
    }

    public BigDecimal getExpectInvest() {
        return expectInvest;
    }

    public void setExpectInvest(BigDecimal expectInvest) {
        this.expectInvest = expectInvest;
    }

    public BigDecimal getTotalInvest() {
        return totalInvest;
    }

    public void setTotalInvest(BigDecimal totalInvest) {
        this.totalInvest = totalInvest;
    }

    public BigDecimal getAuditStatistics() {
        return auditStatistics;
    }

    public void setAuditStatistics(BigDecimal auditStatistics) {
        this.auditStatistics = auditStatistics;
    }

    public BigDecimal getGovConfirm() {
        return govConfirm;
    }

    public void setGovConfirm(BigDecimal govConfirm) {
        this.govConfirm = govConfirm;
    }

    public BigDecimal getGovCheck() {
        return govCheck;
    }

    public void setGovCheck(BigDecimal govCheck) {
        this.govCheck = govCheck;
    }

    public BigDecimal getUncheck() {
        return uncheck;
    }

    public void setUncheck(BigDecimal uncheck) {
        this.uncheck = uncheck;
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