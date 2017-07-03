package com.s4game.oa.common.entity;

import java.util.Date;

public class User {
    private Long id;

    private String username;

    private String password;

    private String departmentids;

    private String positionids;

    private String beijingMobile;

    private String tianjingMobile;

    private Integer roomId;

    private String remark;

    private Byte deleted;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getDepartmentids() {
        return departmentids;
    }

    public void setDepartmentids(String departmentids) {
        this.departmentids = departmentids == null ? null : departmentids.trim();
    }

    public String getPositionids() {
        return positionids;
    }

    public void setPositionids(String positionids) {
        this.positionids = positionids == null ? null : positionids.trim();
    }

    public String getBeijingMobile() {
        return beijingMobile;
    }

    public void setBeijingMobile(String beijingMobile) {
        this.beijingMobile = beijingMobile == null ? null : beijingMobile.trim();
    }

    public String getTianjingMobile() {
        return tianjingMobile;
    }

    public void setTianjingMobile(String tianjingMobile) {
        this.tianjingMobile = tianjingMobile == null ? null : tianjingMobile.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Byte getDeleted() {
        return deleted;
    }

    public void setDeleted(Byte deleted) {
        this.deleted = deleted;
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