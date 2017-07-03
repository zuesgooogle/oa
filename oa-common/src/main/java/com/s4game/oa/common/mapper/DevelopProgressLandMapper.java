package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.DevelopProgressLand;
import java.util.List;

public interface DevelopProgressLandMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DevelopProgressLand record);

    DevelopProgressLand selectByPrimaryKey(Long id);

    List<DevelopProgressLand> selectAll();

    int updateByPrimaryKey(DevelopProgressLand record);
}