package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.Land;

public interface LandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Land record);

    int insertSelective(Land record);

    Land selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Land record);

    int updateByPrimaryKey(Land record);
}