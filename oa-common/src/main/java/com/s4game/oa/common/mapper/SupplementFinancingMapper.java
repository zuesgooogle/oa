package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.SupplementFinancing;

public interface SupplementFinancingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SupplementFinancing record);

    int insertSelective(SupplementFinancing record);

    SupplementFinancing selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SupplementFinancing record);

    int updateByPrimaryKey(SupplementFinancing record);
}