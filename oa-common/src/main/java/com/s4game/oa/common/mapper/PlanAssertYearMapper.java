package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanAssertYear;
import java.util.List;

public interface PlanAssertYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanAssertYear record);

    PlanAssertYear selectByPrimaryKey(Long id);

    List<PlanAssertYear> selectAll();

    int updateByPrimaryKey(PlanAssertYear record);
}