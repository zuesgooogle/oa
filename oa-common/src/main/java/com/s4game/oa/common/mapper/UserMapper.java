package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.User;
import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    User selectByPrimaryKey(Long id);

    User selectByUsername(String username);
    
    User selectByMobile(String mobile);
    
    List<User> selectAll();

    int updateByPrimaryKey(User record);
}