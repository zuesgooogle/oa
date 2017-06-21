package com.s4game.oa.common.response;

public class Response {

	private Object data;

	private long totalCount; //总记录 数
	
	private boolean success;

	private String msg;

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
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
	
	public static Builder newBuilder() {
		return new Builder();
	}
	
	public static class Builder {
		
		private Object data;
		
		private long totalCount;
		
		private boolean success;
		
		private String msg;
		
		/**
		 * 有数据，默认表示成功
		 * 
		 * @param data
		 * @return
		 */
		public Builder setData(Object data) {
			this.data = data;
			this.success = true;
			return this;
		}
		
		public Builder setTotalCount(long totalCount) {
			this.totalCount = totalCount;
			return this;
		}
		
		public Builder success() {
			this.success = true;
			return this;
		}
		
		public Builder failure(String msg) {
			this.success = false;
			this.msg = msg;
			return this;
		}
		
		public Response build() {
			Response response = new Response();
			response.setData(data);
			response.setTotalCount(totalCount);
			response.setSuccess(success);
			response.setMsg(msg);
			
			return response;
		}
	}
	
}
