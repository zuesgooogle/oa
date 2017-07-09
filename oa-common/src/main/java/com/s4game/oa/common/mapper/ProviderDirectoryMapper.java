package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.ProviderDirectory;

public interface ProviderDirectoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProviderDirectory record);

    int insertSelective(ProviderDirectory record);

    ProviderDirectory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProviderDirectory record);

    int updateByPrimaryKey(ProviderDirectory record);
}