package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.DevelopProgressLand;

public interface DevelopProgressLandMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DevelopProgressLand record);

    int insertSelective(DevelopProgressLand record);

    DevelopProgressLand selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DevelopProgressLand record);

    int updateByPrimaryKey(DevelopProgressLand record);
}