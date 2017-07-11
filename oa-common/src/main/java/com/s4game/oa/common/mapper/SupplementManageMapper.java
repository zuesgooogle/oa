package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.SupplementManage;

public interface SupplementManageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SupplementManage record);

    int insertSelective(SupplementManage record);

    SupplementManage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SupplementManage record);

    int updateByPrimaryKey(SupplementManage record);
    
    
    /**
     * 统计报表
     * 
     * @param record
     * @return
     */
    List<SupplementManage> selectReport(SupplementManage record);
    
}