package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ContractLedger;
import java.util.List;

public interface ContractLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ContractLedger record);

    ContractLedger selectByPrimaryKey(Long id);

    List<ContractLedger> selectAll();

    int updateByPrimaryKey(ContractLedger record);
}