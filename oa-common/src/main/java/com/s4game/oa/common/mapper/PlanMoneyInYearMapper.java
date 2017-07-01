package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyInYear;
import java.util.List;

public interface PlanMoneyInYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyInYear record);

    PlanMoneyInYear selectByPrimaryKey(Long id);

    List<PlanMoneyInYear> selectAll();

    int updateByPrimaryKey(PlanMoneyInYear record);
}