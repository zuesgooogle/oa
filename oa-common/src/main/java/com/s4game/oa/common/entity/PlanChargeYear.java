package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class PlanChargeYear {
    private Long id;

    private Integer company;

    private Integer departmentId;

    private Integer projectId;

    private Integer subjectId;

    private String chargeName;

    private BigDecimal yearAmount;

    private Integer year;

    private BigDecimal month1;

    private BigDecimal month2;

    private BigDecimal month3;

    private BigDecimal month4;

    private BigDecimal month5;

    private BigDecimal month6;

    private BigDecimal month7;

    private BigDecimal month8;

    private BigDecimal month9;

    private BigDecimal month10;

    private BigDecimal month11;

    private BigDecimal month12;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getCompany() {
        return company;
    }

    public void setCompany(Integer company) {
        this.company = company;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getChargeName() {
        return chargeName;
    }

    public void setChargeName(String chargeName) {
        this.chargeName = chargeName == null ? null : chargeName.trim();
    }

    public BigDecimal getYearAmount() {
        return yearAmount;
    }

    public void setYearAmount(BigDecimal yearAmount) {
        this.yearAmount = yearAmount;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public BigDecimal getMonth1() {
        return month1;
    }

    public void setMonth1(BigDecimal month1) {
        this.month1 = month1;
    }

    public BigDecimal getMonth2() {
        return month2;
    }

    public void setMonth2(BigDecimal month2) {
        this.month2 = month2;
    }

    public BigDecimal getMonth3() {
        return month3;
    }

    public void setMonth3(BigDecimal month3) {
        this.month3 = month3;
    }

    public BigDecimal getMonth4() {
        return month4;
    }

    public void setMonth4(BigDecimal month4) {
        this.month4 = month4;
    }

    public BigDecimal getMonth5() {
        return month5;
    }

    public void setMonth5(BigDecimal month5) {
        this.month5 = month5;
    }

    public BigDecimal getMonth6() {
        return month6;
    }

    public void setMonth6(BigDecimal month6) {
        this.month6 = month6;
    }

    public BigDecimal getMonth7() {
        return month7;
    }

    public void setMonth7(BigDecimal month7) {
        this.month7 = month7;
    }

    public BigDecimal getMonth8() {
        return month8;
    }

    public void setMonth8(BigDecimal month8) {
        this.month8 = month8;
    }

    public BigDecimal getMonth9() {
        return month9;
    }

    public void setMonth9(BigDecimal month9) {
        this.month9 = month9;
    }

    public BigDecimal getMonth10() {
        return month10;
    }

    public void setMonth10(BigDecimal month10) {
        this.month10 = month10;
    }

    public BigDecimal getMonth11() {
        return month11;
    }

    public void setMonth11(BigDecimal month11) {
        this.month11 = month11;
    }

    public BigDecimal getMonth12() {
        return month12;
    }

    public void setMonth12(BigDecimal month12) {
        this.month12 = month12;
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