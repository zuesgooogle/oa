package com.s4game.oa.common.mapper;

import com.s4game.oa.common.entity.Bank;
import java.util.List;

public interface BankMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bank record);

    Bank selectByPrimaryKey(Integer id);

    List<Bank> selectAll();

    int updateByPrimaryKey(Bank record);
}