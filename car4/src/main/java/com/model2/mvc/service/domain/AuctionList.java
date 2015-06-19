package com.model2.mvc.service.domain;

import java.util.Date;

public class AuctionList {
	
	private int auctionListNo;		//입찰현황리스트
	private int bidPrice;			//제시가
	private Car bidCarNo;			//입찰차량
	private Auction bidAuctionNo;	//옥션글
	private Date bidRegDate;
		
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
	public Car getBidCarNo() {
		return bidCarNo;
	}
	public void setBidCarNo(Car bidCarNo) {
		this.bidCarNo = bidCarNo;
	}
	public Auction getBidAuctionNo() {
		return bidAuctionNo;
	}
	public void setBidAuctionNo(Auction bidAuctionNo) {
		this.bidAuctionNo = bidAuctionNo;
	}
	
	public Date getBidRegDate() {
		return bidRegDate;
	}

	public void setBidRegDate(Date bidRegDate) {
		this.bidRegDate = bidRegDate;
	}

	public int getBidPrice() {
		return bidPrice;
	}

	public void setBidPrice(int bidPrice) {
		this.bidPrice = bidPrice;
	}

	@Override
	public String toString() {
		return "AuctionList [auctionListNo=" + auctionListNo + ", carNo="
				+ bidCarNo + ", auctionNo=" + bidAuctionNo + "]";
	}

	
}

	