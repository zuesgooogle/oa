package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyInMonth;

public interface PlanMoneyInMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyInMonth record);

    int insertSelective(PlanMoneyInMonth record);

    PlanMoneyInMonth selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanMoneyInMonth record);

    int updateByPrimaryKey(PlanMoneyInMonth record);
}