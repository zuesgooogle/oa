package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserPosition;

public interface UserPositionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserPosition record);

    int insertSelective(UserPosition record);

    UserPosition selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserPosition record);

    int updateByPrimaryKey(UserPosition record);
    
    
    int deleteByUserId(Integer id);
}