package com.s4game.oa.common.dao.impl;


import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.dao.BaseDao;

@Repository("baseDao")
public class BaseDaoImpl<T, PK extends Serializable> extends SqlSessionDaoSupport implements BaseDao<T, PK>, Serializable {

    private static final long serialVersionUID = 7623507504198633838L;

    private final String POSTFIX = "Mapper";

    private final String INSERT = ".insert";

    private final String ENTITYSUBPACKAGE = "\\.entity";

    private final String MAPPERSUBPACKAGE = ".mapper.";

    private final String INSERTSELECTIVE = ".insertSelective";

    private final String SELECTBYPRIMARYKEY = ".selectByPrimaryKey";

    private final String UPDATEBYPRIMARYKEY = ".updateByPrimaryKey";

    private final String UPDATEBYPRIMARYKEYSELECTIVE = ".updateByPrimaryKeySelective";

    private final String DELETEBYPRIMARYKEY = ".deleteByPrimaryKey";

    private final String SELECTALL = ".selectAll";

    @Autowired
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        super.setSqlSessionFactory(sqlSessionFactory);
    }

    public String getNamespace(T t) {
        String namespace = t.getClass().getPackage().getName().replaceAll(this.ENTITYSUBPACKAGE, this.MAPPERSUBPACKAGE) + t.getClass().getSimpleName()
                + this.POSTFIX;
        return namespace;
    }

    private boolean containProperty(T t, String property) {
        try {
            Field f = t.getClass().getDeclaredField(property);
            if (f != null) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            logger.error(ex);
            return false;
        }
    }

    public int insert(T entity) {
        return getSqlSession().insert(this.getNamespace(entity) + INSERT, entity);
    }

    public int insertSelective(T record) {
        preSave(record);
        return getSqlSession().insert(this.getNamespace(record) + INSERTSELECTIVE, record);
    }

    public T selectByPrimaryKey(T t, PK pk) {
        return getSqlSession().selectOne(this.getNamespace(t) + SELECTBYPRIMARYKEY, pk);
    }

    public int updateByPrimaryKey(T record) {
        return getSqlSession().update(this.getNamespace(record) + UPDATEBYPRIMARYKEY, record);
    }

    public int updateByPrimaryKeySelective(T record) {
        return getSqlSession().update(this.getNamespace(record) + UPDATEBYPRIMARYKEYSELECTIVE, record);
    }

    public int deleteByPrimaryKey(T t, PK pk) {
        return getSqlSession().delete(this.getNamespace(t) + DELETEBYPRIMARYKEY, pk);
    }

    private void preSave(T t) {
        try {
            Field f = t.getClass().getDeclaredField("createTime");
            f.setAccessible(true);
            f.set(t, new Date());
        } catch (Exception ex) {

        }
    }

    public PageInfo<T> selectPage(T t, Page<T> page) {
        return selectPage(SELECTALL, t, page);
    }

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

    @Override
    public T selectUnique(T t) {
        return this.getSqlSession().selectOne(this.getNamespace(t) + SELECTALL, t);
    }
}
