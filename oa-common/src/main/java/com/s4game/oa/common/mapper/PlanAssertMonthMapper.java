package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanAssertMonth;

public interface PlanAssertMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanAssertMonth record);

    int insertSelective(PlanAssertMonth record);

    PlanAssertMonth selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanAssertMonth record);

    int updateByPrimaryKey(PlanAssertMonth record);
}