package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.FinancingLedger;

public interface FinancingLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FinancingLedger record);

    int insertSelective(FinancingLedger record);

    FinancingLedger selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FinancingLedger record);

    int updateByPrimaryKey(FinancingLedger record);
}