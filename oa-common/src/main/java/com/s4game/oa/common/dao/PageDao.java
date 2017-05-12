package com.s4game.oa.common.dao;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

public interface PageDao<T> {

	public PageInfo<T> selectPage(T t, Page<T> page);

    public PageInfo<T> selectPage(String sql, T t, Page<T> page);
	
}
