package com.s4game.oa.manager.service;

import java.util.Map;

import com.s4game.oa.common.entity.Filter;

public interface IFilterService {

	/**
	 * 解析为查询参数对象
	 * 
	 * @param json
	 * @return
	 */
	public Map<String, Filter> decode(String filter);
}
