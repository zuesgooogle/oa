package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.DevelopProgressSecond;
import java.util.List;

public interface DevelopProgressSecondMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DevelopProgressSecond record);

    DevelopProgressSecond selectByPrimaryKey(Long id);

    List<DevelopProgressSecond> selectAll();

    int updateByPrimaryKey(DevelopProgressSecond record);
}