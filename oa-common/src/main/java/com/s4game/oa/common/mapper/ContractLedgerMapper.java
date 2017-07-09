package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ContractLedger;

public interface ContractLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ContractLedger record);

    int insertSelective(ContractLedger record);

    ContractLedger selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ContractLedger record);

    int updateByPrimaryKey(ContractLedger record);
}