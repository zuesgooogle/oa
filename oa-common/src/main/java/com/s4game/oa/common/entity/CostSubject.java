package com.s4game.oa.common.entity;

public class CostSubject {
    private Integer id;

    private String text;

    private Integer parentId;

    private Short leaf;

    private Short deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Short getLeaf() {
        return leaf;
    }

    public void setLeaf(Short leaf) {
        this.leaf = leaf;
    }

    public Short getDeleted() {
        return deleted;
    }

    public void setDeleted(Short deleted) {
        this.deleted = deleted;
    }
}