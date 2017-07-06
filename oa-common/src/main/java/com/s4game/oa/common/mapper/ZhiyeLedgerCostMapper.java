package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.ZhiyeLedgerCost;

public interface ZhiyeLedgerCostMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ZhiyeLedgerCost record);

    ZhiyeLedgerCost selectByPrimaryKey(Long id);

    List<ZhiyeLedgerCost> selectAll();

    int updateByPrimaryKey(ZhiyeLedgerCost record);
    
    
    List<ZhiyeLedgerCost> selectReport(Integer year);
}