package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.LedgerZhidi;
import java.util.List;

public interface LedgerZhidiMapper {
    int deleteByPrimaryKey(Long id);

    int insert(LedgerZhidi record);

    LedgerZhidi selectByPrimaryKey(Long id);

    List<LedgerZhidi> selectAll();

    int updateByPrimaryKey(LedgerZhidi record);
}