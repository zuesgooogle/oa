package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanAssertMonth;
import java.util.List;

public interface PlanAssertMonthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanAssertMonth record);

    PlanAssertMonth selectByPrimaryKey(Long id);

    List<PlanAssertMonth> selectAll();

    int updateByPrimaryKey(PlanAssertMonth record);
}