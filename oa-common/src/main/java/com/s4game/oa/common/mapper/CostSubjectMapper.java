package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.CostSubject;

public interface CostSubjectMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(CostSubject record);

    CostSubject selectByPrimaryKey(Integer id);

    List<CostSubject> selectAll();

    List<CostSubject> selectByParentId(Integer id);
    
    int updateByPrimaryKey(CostSubject record);
}