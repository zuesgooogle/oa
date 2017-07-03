package com.s4game.oa.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class PlanAssertYear {
    private Long id;

    private Integer assertId;

    private String assertName;

    private Integer yearTotalNum;

    private BigDecimal unitPrice;

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

    private String remark;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getAssertId() {
        return assertId;
    }

    public void setAssertId(Integer assertId) {
        this.assertId = assertId;
    }

    public String getAssertName() {
        return assertName;
    }

    public void setAssertName(String assertName) {
        this.assertName = assertName == null ? null : assertName.trim();
    }

    public Integer getYearTotalNum() {
        return yearTotalNum;
    }

    public void setYearTotalNum(Integer yearTotalNum) {
        this.yearTotalNum = yearTotalNum;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
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