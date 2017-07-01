package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyInMonth;
import java.util.List;

public interface PlanMoneyInMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyInMonth record);

    PlanMoneyInMonth selectByPrimaryKey(Long id);

    List<PlanMoneyInMonth> selectAll();

    int updateByPrimaryKey(PlanMoneyInMonth record);
}