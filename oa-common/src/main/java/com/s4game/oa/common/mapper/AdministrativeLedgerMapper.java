package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.AdministrativeLedger;
import java.util.List;

public interface AdministrativeLedgerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AdministrativeLedger record);

    AdministrativeLedger selectByPrimaryKey(Long id);

    List<AdministrativeLedger> selectAll();

    int updateByPrimaryKey(AdministrativeLedger record);
}