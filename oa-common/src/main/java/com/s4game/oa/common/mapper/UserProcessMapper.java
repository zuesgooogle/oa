package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserProcess;
import java.util.List;

public interface UserProcessMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserProcess record);

    UserProcess selectByPrimaryKey(Long id);

    List<UserProcess> selectAll();

    int updateByPrimaryKey(UserProcess record);
}