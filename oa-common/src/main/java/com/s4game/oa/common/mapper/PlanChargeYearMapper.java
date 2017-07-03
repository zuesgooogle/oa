package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.PlanChargeYear;
import java.util.List;

public interface PlanChargeYearMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlanChargeYear record);

    PlanChargeYear selectByPrimaryKey(Long id);

    List<PlanChargeYear> selectAll();

    int updateByPrimaryKey(PlanChargeYear record);
}