package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.Position;
import java.util.List;

public interface PositionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Position record);

    Position selectByPrimaryKey(Integer id);

    List<Position> selectAll();

    List<Position> selectByParentId(Integer parentId);
    
    int updateByPrimaryKey(Position record);
}