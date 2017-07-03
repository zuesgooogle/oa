package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.TaskClassifi;
import java.util.List;

public interface TaskClassifiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TaskClassifi record);

    TaskClassifi selectByPrimaryKey(Integer id);

    List<TaskClassifi> selectAll();

    int updateByPrimaryKey(TaskClassifi record);
}