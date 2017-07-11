package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.SupplementFinancing;

public interface SupplementFinancingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SupplementFinancing record);

    int insertSelective(SupplementFinancing record);

    SupplementFinancing selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SupplementFinancing record);

    int updateByPrimaryKey(SupplementFinancing record);
    
    
    
    /**
     * 统计报表
     * 
     * @param record
     * @return
     */
    List<SupplementFinancing> selectReport(SupplementFinancing record);
}