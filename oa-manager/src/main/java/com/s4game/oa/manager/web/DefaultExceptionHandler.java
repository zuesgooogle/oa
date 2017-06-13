package com.s4game.oa.manager.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.s4game.oa.common.response.Response;

/**
 * @author zeusgooogle@gmail.com
 * @sine 20167年5月13日 上午4:30:16
 */
@ControllerAdvice
public class DefaultExceptionHandler {

	private Logger LOG = LoggerFactory.getLogger(getClass());

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public Response<String> resolveException(HttpServletRequest request, HttpServletResponse response, Exception ex) {
		Response<String> result = new Response<>();
		result.setSuccess(false);
		result.setMsg(ex.getMessage());

		LOG.error("manager exception.", ex);

		return result;
	}

}
