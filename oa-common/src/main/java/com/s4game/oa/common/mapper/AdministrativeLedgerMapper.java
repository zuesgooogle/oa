package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.AdministrativeLedger;

public interface AdministrativeLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AdministrativeLedger record);

    int insertSelective(AdministrativeLedger record);

    AdministrativeLedger selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdministrativeLedger record);

    int updateByPrimaryKey(AdministrativeLedger record);
}