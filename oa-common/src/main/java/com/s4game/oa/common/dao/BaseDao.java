package com.s4game.oa.common.dao;



import java.io.Serializable;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

public interface BaseDao<T, PK extends Serializable> {

	public int insert(T entity);

	public int insertSelective(T record);

	public T selectByPrimaryKey(T t, PK pk);

	public int updateByPrimaryKey(T record);

	public int updateByPrimaryKeySelective(T record);

	public int deleteByPrimaryKey(T t, PK pk);

	public PageInfo<T> selectPage(T t, Page<T> page);

    public PageInfo<T> selectPage(String sql, T t, Page<T> page);
	
	public T selectUnique(T t);
}
