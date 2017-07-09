package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.CostSubject;

public interface CostSubjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CostSubject record);

    int insertSelective(CostSubject record);

    CostSubject selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CostSubject record);

    int updateByPrimaryKey(CostSubject record);
    
    List<CostSubject> selectByParentId(Integer id);
}