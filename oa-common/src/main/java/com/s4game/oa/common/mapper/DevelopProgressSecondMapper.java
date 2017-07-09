package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.DevelopProgressSecond;

public interface DevelopProgressSecondMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DevelopProgressSecond record);

    int insertSelective(DevelopProgressSecond record);

    DevelopProgressSecond selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DevelopProgressSecond record);

    int updateByPrimaryKey(DevelopProgressSecond record);
}