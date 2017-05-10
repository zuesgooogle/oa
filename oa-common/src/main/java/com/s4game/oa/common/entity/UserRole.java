package com.s4game.oa.common.entity;

import com.s4game.oa.common.data.AbstractEntity;

/**
 * 用户-角色关系， 1 ---> *
 */
public class UserRole extends AbstractEntity {

	private Long userId;

	private Long roleId;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

}
