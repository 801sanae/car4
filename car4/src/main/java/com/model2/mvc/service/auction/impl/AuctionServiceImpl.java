package com.model2.mvc.service.auction.impl;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.auction.AuctionService;
import com.model2.mvc.service.domain.Auction;

@Service("auctionServiceImpl")
public class AuctionServiceImpl implements AuctionService{
	
	///Field
	@Autowired
	@Qualifier("auctionDao")
	private AuctionDao auctionDao;
	
	public void setAuctionDao(AuctionDao auctionDao) {
		this.auctionDao = auctionDao;
	}
	
	///Constructor
	public AuctionServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method

	public void addAuction(Auction auction) throws Exception {
		// TODO Auto-generated method stub
		auctionDao.addAuction(auction);
	}
}