package com.s4game.oa.common.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.dao.PageDao;
import com.s4game.oa.common.service.PageService;

@Service("pageService")
public class PageServiceImpl<T> implements PageService<T> {
	
    @Autowired
    private PageDao<T> pageDao;
   
    @Override
    public PageInfo<T> selectPage(T t, Page<T> page) {
        return this.pageDao.selectPage(t, page);
    }

    @Override
    public PageInfo<T> selectPage(String sql, T t, Page<T> page) {
        return this.pageDao.selectPage(sql, t, page);
    }

}
