package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.FinancingProgress;
import java.util.List;

public interface FinancingProgressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FinancingProgress record);

    FinancingProgress selectByPrimaryKey(Long id);

    List<FinancingProgress> selectAll();

    int updateByPrimaryKey(FinancingProgress record);
}