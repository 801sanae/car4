package com.model2.mvc.service.domain;

public class AuctionList {
	
	private int auctionListNo;	//입찰현황리스트
	private Car carNo;			//입찰차량
	private Auction auctionNo;	//옥션글
	
	//default Constructor
	public AuctionList() {
		System.out.println(this.getClass());
	}
	
	public int getAuctionListNo() {
		return auctionListNo;
	}
	public void setAuctionListNo(int auctionListNo) {
		this.auctionListNo = auctionListNo;
	}
	public Car getCarNo() {
		return carNo;
	}
	public void setCarNo(Car carNo) {
		this.carNo = carNo;
	}
	public Auction getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(Auction auctionNo) {
		this.auctionNo = auctionNo;
	}
	
	@Override
	public String toString() {
		return "AuctionList [auctionListNo=" + auctionListNo + ", carNo="
				+ carNo + ", auctionNo=" + auctionNo + "]";
	}
	
	
	

}

	