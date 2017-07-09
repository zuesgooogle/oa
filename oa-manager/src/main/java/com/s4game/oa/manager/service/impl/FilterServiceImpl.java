package com.s4game.oa.manager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.s4game.oa.common.entity.Filter;
import com.s4game.oa.manager.service.IFilterService;

@Service
public class FilterServiceImpl implements IFilterService {

	@Autowired
	private ObjectMapper jacksonObjectMapper;

	@Override
	public Map<String, Filter> decode(String json) {
		if (json == null) {
			return null;
		}
		
		try {
			List<Filter> filters = jacksonObjectMapper.readValue(json, new TypeReference<List<Filter>>() {});
			
			if (filters != null) {
				Map<String, Filter> map = new HashMap<>(filters.size());
				for (Filter f : filters) {
					map.put(f.getProperty(), f);
				}
				return map;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
