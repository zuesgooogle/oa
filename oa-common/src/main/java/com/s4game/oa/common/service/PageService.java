package com.s4game.oa.common.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

public interface PageService<T> {

	/**
	 * 分页查询
	 * 
	 * @param t
	 * @return
	 */
	public PageInfo<T> selectPage(T t, Page<T> page);

	 /**
     * 分页查询，自定义SQL
     * @param sql
     * @param t
     * @return
     */
    public PageInfo<T> selectPage(String sql, T t, Page<T> page);
	
}
