package com.s4game.oa.common.entity;

import com.s4game.oa.common.data.AbstractEntity;

/**
 * 用户-职位关系，1 ---> *
 *
 */
public class UserPosition extends AbstractEntity {

	private Long userId;

	private Long positionId;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getPositionId() {
		return positionId;
	}

	public void setPositionId(Long positionId) {
		this.positionId = positionId;
	}

}
