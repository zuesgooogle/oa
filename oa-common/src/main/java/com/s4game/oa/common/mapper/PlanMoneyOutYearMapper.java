package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanMoneyOutYear;
import java.util.List;

public interface PlanMoneyOutYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanMoneyOutYear record);

    PlanMoneyOutYear selectByPrimaryKey(Long id);

    List<PlanMoneyOutYear> selectAll();

    int updateByPrimaryKey(PlanMoneyOutYear record);
}