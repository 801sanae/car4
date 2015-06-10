package com.model2.mvc.service.auction.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.auction.AuctionService;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Car;

@Service("auctionServiceImpl")
public class AuctionServiceImpl implements AuctionService {

	// /Field
	@Autowired
	@Qualifier("auctionDao")
	private AuctionDao auctionDao;

	public void setAuctionDao(AuctionDao auctionDao) {
		this.auctionDao = auctionDao;
	}

	// /Constructor
	public AuctionServiceImpl() {
		System.out.println(this.getClass());
	}

	// /Method

	public void addAuction(Auction auction) throws Exception {
		// TODO Auto-generated method stub
		auctionDao.addAuction(auction);
	}
	

	@Override
	public Map<String, Object> getAuctionList(int userNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		
		Map<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("userNo", userNo);
		hashMap.put("search", search);
		
		System.out.println("AuctionServiceImpl : "+hashMap);
//		System.out.println("AuctionServiceImpl : "+has);

		
		
		List<Auction> list = auctionDao.getAuctionList(hashMap);
		int totalCount = auctionDao.getTotalCount(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));

		return map;
	}

	public void auctionInfo(Auction auction) throws Exception {
		// TODO Auto-generated method stub
		auctionDao.addAuction(auction);
	}


	@Override
	public Auction getAuction(int auctionNo) throws Exception {
		return auctionDao.getAuction(auctionNo);
	}

	
	
	//AuctionListMapper 값 넣기
	@Override
	public void addAuctionCar(Map<String, Object> add) throws Exception {
		auctionDao.addAuctionCar(add);
	}
	
	//낙찰 후 auction테이블의 success_car 변경
	public void updateAuction(int carNo, int auctionNo) throws Exception {
		auctionDao.updateAuction(carNo, auctionNo);
	}
	
}