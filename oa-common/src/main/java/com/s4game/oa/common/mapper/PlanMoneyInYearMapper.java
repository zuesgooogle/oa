package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyInYear;

public interface PlanMoneyInYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyInYear record);

    int insertSelective(PlanMoneyInYear record);

    PlanMoneyInYear selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanMoneyInYear record);

    int updateByPrimaryKey(PlanMoneyInYear record);
}