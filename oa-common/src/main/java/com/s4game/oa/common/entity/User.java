package com.s4game.oa.common.entity;

import com.wordnik.swagger.annotations.ApiModelProperty;

public class User {

	@ApiModelProperty(value = "用户唯一ID")
	private Integer userId;

	private String userName;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
