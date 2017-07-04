package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.FinancingLedger;
import java.util.List;

public interface FinancingLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FinancingLedger record);

    FinancingLedger selectByPrimaryKey(Long id);

    List<FinancingLedger> selectAll();

    int updateByPrimaryKey(FinancingLedger record);
}