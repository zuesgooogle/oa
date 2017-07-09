package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.ZhidiLedgerCost;

public interface ZhidiLedgerCostMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ZhidiLedgerCost record);

    int insertSelective(ZhidiLedgerCost record);

    ZhidiLedgerCost selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ZhidiLedgerCost record);

    int updateByPrimaryKey(ZhidiLedgerCost record);
    
    List<ZhidiLedgerCost> selectReport(Integer year);
}