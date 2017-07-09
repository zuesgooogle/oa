package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.CloudStorage;

public interface CloudStorageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CloudStorage record);

    int insertSelective(CloudStorage record);

    CloudStorage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CloudStorage record);

    int updateByPrimaryKey(CloudStorage record);
}