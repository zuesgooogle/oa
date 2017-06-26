package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.CostSubject;
import java.util.List;

public interface CostSubjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CostSubject record);

    CostSubject selectByPrimaryKey(Integer id);

    List<CostSubject> selectAll();

    int updateByPrimaryKey(CostSubject record);
}