package com.s4game.oa.manager.utils;

public enum Company {

	ZHI_DI(1),
	
	ZHI_YE(2),
	
	;
	
	private final int type;
	
	private Company(int type) {
		this.type = type;
	}
	
	public int getType() {
		return type;
	}
}
