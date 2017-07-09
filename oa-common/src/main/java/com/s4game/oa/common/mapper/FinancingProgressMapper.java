package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.FinancingProgress;

public interface FinancingProgressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FinancingProgress record);

    int insertSelective(FinancingProgress record);

    FinancingProgress selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FinancingProgress record);

    int updateByPrimaryKey(FinancingProgress record);
}