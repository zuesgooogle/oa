package com.s4game.oa.common.data;

public interface IEntity {

	public String getPrimaryKeyName();
	
	public Object getPrimaryKeyValue();
	
	public IEntity copy();
	
}
