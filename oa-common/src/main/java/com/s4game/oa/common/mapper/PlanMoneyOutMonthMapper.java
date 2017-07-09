package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyOutMonth;

public interface PlanMoneyOutMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyOutMonth record);

    int insertSelective(PlanMoneyOutMonth record);

    PlanMoneyOutMonth selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanMoneyOutMonth record);

    int updateByPrimaryKey(PlanMoneyOutMonth record);
}