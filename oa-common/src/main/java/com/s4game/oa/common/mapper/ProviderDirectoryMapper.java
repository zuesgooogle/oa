package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ProviderDirectory;
import java.util.List;

public interface ProviderDirectoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProviderDirectory record);

    ProviderDirectory selectByPrimaryKey(Long id);

    List<ProviderDirectory> selectAll();

    int updateByPrimaryKey(ProviderDirectory record);
}