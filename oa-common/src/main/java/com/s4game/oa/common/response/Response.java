package com.s4game.oa.common.response;

public class Response<T> {

	private T data;
	
	private int errorCode = ErrorCode.SUCCESS;

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public int getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}
	
}
