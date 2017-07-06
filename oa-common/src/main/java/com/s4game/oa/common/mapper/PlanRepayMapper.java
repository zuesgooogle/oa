package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanRepay;
import java.util.List;

public interface PlanRepayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanRepay record);

    PlanRepay selectByPrimaryKey(Long id);

    List<PlanRepay> selectAll();

    int updateByPrimaryKey(PlanRepay record);
}