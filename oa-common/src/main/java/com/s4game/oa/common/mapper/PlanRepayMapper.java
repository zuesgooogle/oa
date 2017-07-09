package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanRepay;

public interface PlanRepayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanRepay record);

    int insertSelective(PlanRepay record);

    PlanRepay selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PlanRepay record);

    int updateByPrimaryKey(PlanRepay record);
}