package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyOutMonth;
import java.util.List;

public interface PlanMoneyOutMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyOutMonth record);

    PlanMoneyOutMonth selectByPrimaryKey(Long id);

    List<PlanMoneyOutMonth> selectAll();

    int updateByPrimaryKey(PlanMoneyOutMonth record);
}