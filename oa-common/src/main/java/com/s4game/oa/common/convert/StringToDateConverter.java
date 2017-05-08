package com.s4game.oa.common.convert;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.core.convert.converter.Converter;

public class StringToDateConverter implements Converter<String, Date> {
	
	private static final String FULL_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	private static final String SHORT_DATE_FORMAT = "yyyy-MM-dd";

	/**
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	@Override
	public Date convert(String source) {
		if (StringUtils.isBlank(source)) {
			return null;
		}
		source = source.trim();
		try {
			if (source.contains("-")) {
				SimpleDateFormat formatter;
				if (source.contains(":")) {
					formatter = new SimpleDateFormat(FULL_DATE_FORMAT);
				} else {
					formatter = new SimpleDateFormat(SHORT_DATE_FORMAT);
				}
				Date dtDate = formatter.parse(source);
				return dtDate;
			} else if (source.matches("^\\d+$")) {
				Long lDate = new Long(source);
				return new Date(lDate);
			}
		} catch (Exception e) {
			throw new RuntimeException(String.format("parser %s to Date fail", source));
		}
		throw new RuntimeException(String.format("parser %s to Date fail", source));
	}

}
