package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserPosition;
import java.util.List;

public interface UserPositionMapper {
    int deleteByPrimaryKey(Integer id);

    int deleteByUserId(Integer id);
    
    int insert(UserPosition record);

    UserPosition selectByPrimaryKey(Integer id);

    List<UserPosition> selectAll();

    int updateByPrimaryKey(UserPosition record);
}