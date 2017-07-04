package com.s4game.oa.common.entity;

import java.util.Date;

public class ProviderDirectory {
    private Long id;

    private String name;

    private Byte type;

    private String content;

    private String linkman;

    private String phone;

    private String address;

    private String postcode;

    private String assessTable;

    private String abilityTable;

    private String provideTable;

    private String remark;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }

    public String getAssessTable() {
        return assessTable;
    }

    public void setAssessTable(String assessTable) {
        this.assessTable = assessTable == null ? null : assessTable.trim();
    }

    public String getAbilityTable() {
        return abilityTable;
    }

    public void setAbilityTable(String abilityTable) {
        this.abilityTable = abilityTable == null ? null : abilityTable.trim();
    }

    public String getProvideTable() {
        return provideTable;
    }

    public void setProvideTable(String provideTable) {
        this.provideTable = provideTable == null ? null : provideTable.trim();
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