package com.s4game.oa.common.data;

public class Page {
	
	private Integer pageNum = 1;
	
	private Integer pageSize = 10;
	
	private String orderBy;
	
	private Boolean count = true;

	public Page() {}

	public Page(Integer pageNum, Integer pageSize) {
		this.pageNum = pageNum;
		this.pageSize = pageSize;
	}

	public Page(Integer pageNum, Integer pageSize, String orderBy) {
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.orderBy = orderBy;
	}

	public Boolean getCount() {
		return count;
	}

	public void setCount(Boolean count) {
		this.count = count;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

}
