package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserProcess;

public interface UserProcessMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserProcess record);

    int insertSelective(UserProcess record);

    UserProcess selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserProcess record);

    int updateByPrimaryKey(UserProcess record);
}