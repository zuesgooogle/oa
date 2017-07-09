package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanAssertYear;

public interface PlanAssertYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanAssertYear record);

    int insertSelective(PlanAssertYear record);

    PlanAssertYear selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanAssertYear record);

    int updateByPrimaryKey(PlanAssertYear record);
}