package com.s4game.oa.common.response;

public class Response<T> {

	private T data;

	private boolean success;

	private String msg;

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public Response<T> success(T data) {
		this.data = data;
		this.success = true;
		
		return this;
	}
}
