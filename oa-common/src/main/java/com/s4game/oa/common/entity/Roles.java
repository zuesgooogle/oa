package com.s4game.oa.common.entity;

public enum Roles {
	
	/** 普通员工 */
	EMPLOYEE(1, "employee"),

	/** 经理 */
	MANAGER(2, "manager"),
    
	/** 领导 */
	LEADER(4, "leader"),
	
	/** 管理员 */
	ADMIN(8, "admin"),
	
	;
	
	private final int id;
	
	private final String name;
	
	private Roles(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
}
