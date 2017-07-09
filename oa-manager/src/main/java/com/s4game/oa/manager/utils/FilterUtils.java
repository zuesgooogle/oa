package com.s4game.oa.manager.utils;

import java.util.List;
import java.util.Map;

import com.s4game.oa.common.entity.Filter;

public class FilterUtils {

	@SuppressWarnings("unchecked")
	public static List<Integer> getList(Map<String, Filter> filters, String property) {
		if (!check(filters, property)) {
			return null;
		}
				
		Filter filter = filters.get(property);
		return (List<Integer>) filter.getValue();
	}
	
	public static String getString(Map<String, Filter> filters, String property) {
		if (!check(filters, property)) {
			return null;
		}
		
		return (String) filters.get(property).getValue();
	}
	
	public static boolean check(Map<String, Filter> filters, String property) {
		if (filters == null || filters.isEmpty()) {
			return false;
		}
		return filters.containsKey(property);
	}
}
