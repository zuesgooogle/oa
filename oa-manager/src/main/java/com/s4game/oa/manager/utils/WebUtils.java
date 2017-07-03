package com.s4game.oa.manager.utils;

import org.apache.commons.lang3.StringUtils;

public class WebUtils {

	public static final String SPLIT = ",";
	
	public static String[] split(String value) {
		return StringUtils.split(value, SPLIT);
	}
	
	public static boolean isAdd(Long id) {
		return id == null || id <= 0;
	}
	
	public static boolean isAdd(Integer id) {
		return id == null || id <= 0;
	}
}
