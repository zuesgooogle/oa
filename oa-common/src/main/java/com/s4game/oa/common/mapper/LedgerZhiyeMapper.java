package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.LedgerZhiye;
import java.util.List;

public interface LedgerZhiyeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(LedgerZhiye record);

    LedgerZhiye selectByPrimaryKey(Long id);

    List<LedgerZhiye> selectAll();

    int updateByPrimaryKey(LedgerZhiye record);
}