package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanChargeYear;

public interface PlanChargeYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanChargeYear record);

    int insertSelective(PlanChargeYear record);

    PlanChargeYear selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanChargeYear record);

    int updateByPrimaryKey(PlanChargeYear record);
}