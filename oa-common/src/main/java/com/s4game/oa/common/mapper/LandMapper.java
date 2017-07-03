package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.Land;
import java.util.List;

public interface LandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Land record);

    Land selectByPrimaryKey(Integer id);

    List<Land> selectAll();

    int updateByPrimaryKey(Land record);
}