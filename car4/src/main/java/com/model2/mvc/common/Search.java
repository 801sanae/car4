package com.model2.mvc.common;



public class Search {
	
	///Field
	private int currentPage;
	private String searchCondition;
	private String searchKeyword;
	private int pageSize;
	
	
	private int endRowNum;
	private int startRowNum;
	
	//경매현황게시판에서 전체/경매중/경매완료를 나뉘기위해
	private int tabs;
	//경매현황게시판에서 정렬주기
	private int orderby;
	
	public int getOrderby() {
		return orderby;
	}

	public void setOrderby(int orderby) {
		this.orderby = orderby;
	}

	///Constructor
	public Search() {
	}
	
	///Method
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int paseSize) {
		this.pageSize = paseSize;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	//==> Select Query
	public int getEndRowNum() {
		return getCurrentPage()*getPageSize();
	}
	//==> Select Query
	public int getStartRowNum() {
		return (getCurrentPage()-1)*getPageSize()+1;
	}
	

	public int getTabs() {
		return tabs;
	}

	public void setTabs(int tabs) {
		this.tabs = tabs;
	}

	
}