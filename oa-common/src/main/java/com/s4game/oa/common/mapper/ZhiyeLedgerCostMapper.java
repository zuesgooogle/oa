package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ZhiyeLedgerCost;
import java.util.List;

public interface ZhiyeLedgerCostMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ZhiyeLedgerCost record);

    ZhiyeLedgerCost selectByPrimaryKey(Long id);

    List<ZhiyeLedgerCost> selectAll();

    int updateByPrimaryKey(ZhiyeLedgerCost record);
}