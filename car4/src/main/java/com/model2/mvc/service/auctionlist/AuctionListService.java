package com.model2.mvc.service.auctionlist;

import java.util.List;

import com.model2.mvc.service.domain.AuctionList;


public interface AuctionListService {

	public void addAuctionList(AuctionList auctionList) throws Exception;

	public List<AuctionList> getBidList(int auctionNo);

	public AuctionList getAuction(AuctionList auctionList);
}
