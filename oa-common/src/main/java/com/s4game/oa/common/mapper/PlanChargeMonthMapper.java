package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanChargeMonth;

public interface PlanChargeMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanChargeMonth record);

    int insertSelective(PlanChargeMonth record);

    PlanChargeMonth selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanChargeMonth record);

    int updateByPrimaryKey(PlanChargeMonth record);
}