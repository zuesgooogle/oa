package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ZhidiLedgerCost;
import java.util.List;

public interface ZhidiLedgerCostMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ZhidiLedgerCost record);

    ZhidiLedgerCost selectByPrimaryKey(Long id);

    List<ZhidiLedgerCost> selectAll();

    int updateByPrimaryKey(ZhidiLedgerCost record);
    
    
    List<ZhidiLedgerCost> selectReport(Integer year);
}