package com.s4game.oa.common.data;

import java.util.Date;

import com.wordnik.swagger.annotations.ApiModelProperty;

public abstract class AbstractEntity implements IEntity {
	
	@ApiModelProperty(value = "唯一ID")
	private Long id;
	
	@ApiModelProperty(value = "是否删除")
	private Boolean deleted;

	@ApiModelProperty(value = "创建时间")
	private Date createTime;

	@ApiModelProperty(value = "修改时间")
	private Date updateTime;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
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

	@Override
	public String getPrimaryKeyName() {
		return "id";
	}
	
	@Override
	public Object getPrimaryKeyValue() {
		return getId();
	}

	@Override
	public IEntity copy() {
		return null;
	}

}
