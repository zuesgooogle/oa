package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyOutYear;

public interface PlanMoneyOutYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyOutYear record);

    int insertSelective(PlanMoneyOutYear record);

    PlanMoneyOutYear selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanMoneyOutYear record);

    int updateByPrimaryKey(PlanMoneyOutYear record);
}