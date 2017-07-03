package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.UserDepartment;
import java.util.List;

public interface UserDepartmentMapper {
    int deleteByPrimaryKey(Integer id);
    
    int deleteByUserId(Integer id);

    int insert(UserDepartment record);

    UserDepartment selectByPrimaryKey(Integer id);

    List<UserDepartment> selectAll();

    int updateByPrimaryKey(UserDepartment record);
}