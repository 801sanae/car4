package com.model2.mvc.service.auctionlist;

import java.util.List;
import java.util.Map;

import com.model2.mvc.service.domain.AuctionList;


public interface AuctionListService {

	public void addAuctionList(AuctionList auctionList) throws Exception;

	public List<AuctionList> getBidList(int auctionNo);

	public AuctionList getAuction(AuctionList auctionList);
	
	// 내가 등록한 각 차들의 입찰정보 - 낙찰여부/옥션정보
	public List<AuctionList> getBidListByCarNo(int carNo) throws Exception ;

	
}
