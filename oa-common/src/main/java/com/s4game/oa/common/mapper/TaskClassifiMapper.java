package com.s4game.oa.common.mapper;

import java.util.List;

import com.s4game.oa.common.entity.TaskClassifi;

public interface TaskClassifiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TaskClassifi record);

    TaskClassifi selectByPrimaryKey(Integer id);

    List<TaskClassifi> selectAll();

    List<TaskClassifi> selectByParentId(Integer id);
    
    int updateByPrimaryKey(TaskClassifi record);
}