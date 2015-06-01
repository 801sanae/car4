package com.model2.mvc.service.auction;

import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Auction;


public interface AuctionService {
	public void addAuction(Auction auction) throws Exception;
	
	//리스트 뿌리기
	public Map<String, Object> getAuctionList(Search search) throws Exception;
}
