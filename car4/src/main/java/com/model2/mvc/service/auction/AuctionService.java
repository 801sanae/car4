package com.model2.mvc.service.auction;

import java.util.List;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Car;


public interface AuctionService {
	public void addAuction(Auction auction) throws Exception;
	
	//리스트 뿌리기
	public Map<String, Object> getAuctionList(int userNo, Search search) throws Exception;

	public void auctionInfo(Auction auction) throws Exception;

	
	//where AuctionNo 로 getAuction!
	public Auction getAuction(int auctionNo) throws Exception;
	
	public void addAuctionCar(Map<String, Object> add) throws Exception;
	
	//낙찰 후 auction테이블의 success_car 변경
	public void updateAuction(int carNo, int auctionNo) throws Exception;

	//내 옥션 리스트
	public List<Auction> listUserBuy(Auction auction) throws Exception;
	
	
	public void deleteAuction(int auctionNo) throws Exception; 
}
