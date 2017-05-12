package com.s4game.oa.common.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.dao.PageDao;

@Repository("pageDao")
public class PageDaoImpl<T> extends SqlSessionDaoSupport implements PageDao<T> {

	private final String POSTFIX = "Mapper";

	private final String ENTITYSUBPACKAGE = "\\.entity";

	private final String MAPPERSUBPACKAGE = ".mapper.";

	private final String SELECTALL = ".selectAll";

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public String getNamespace(T t) {
		String packageName = t.getClass().getPackage().getName();

		String namespace = packageName.replaceAll(this.ENTITYSUBPACKAGE, this.MAPPERSUBPACKAGE)
				+ t.getClass().getSimpleName() + this.POSTFIX;
		return namespace;
	}

	@Override
	public PageInfo<T> selectPage(T t, Page<T> page) {
		return selectPage(SELECTALL, t, page);
	}

	@Override
	public PageInfo<T> selectPage(String sql, T t, Page<T> page) {
		if (page != null) {
			if (page.getPageNum() < 1) {
				page.setPageNum(1);
			}
			PageHelper.startPage(page.getPageNum(), page.getPageSize(), page.isCount());
		}
		List<T> list = this.getSqlSession().selectList(this.getNamespace(t) + sql, t);
		return new PageInfo<T>(list);
	}
}
