package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanChargeMonth;
import java.util.List;

public interface PlanChargeMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanChargeMonth record);

    PlanChargeMonth selectByPrimaryKey(Long id);

    List<PlanChargeMonth> selectAll();

    int updateByPrimaryKey(PlanChargeMonth record);
}