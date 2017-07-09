package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.TaskClassifi;

public interface TaskClassifiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TaskClassifi record);

    int insertSelective(TaskClassifi record);

    TaskClassifi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TaskClassifi record);

    int updateByPrimaryKey(TaskClassifi record);
    
    List<TaskClassifi> selectByParentId(Integer id);
}