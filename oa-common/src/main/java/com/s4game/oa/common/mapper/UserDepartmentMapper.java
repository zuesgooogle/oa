package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserDepartment;

public interface UserDepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserDepartment record);

    int insertSelective(UserDepartment record);

    UserDepartment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserDepartment record);

    int updateByPrimaryKey(UserDepartment record);
    
    
    int deleteByUserId(Integer id);
}