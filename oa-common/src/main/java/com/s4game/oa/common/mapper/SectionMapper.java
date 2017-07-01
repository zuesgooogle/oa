package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.Section;
import java.util.List;

public interface SectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    Section selectByPrimaryKey(Integer id);

    List<Section> selectAll();

    int updateByPrimaryKey(Section record);
}