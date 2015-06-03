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
import com.model2.mvc.service.auction.impl.AuctionDao;

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
	public Map<String, Object> getAuctionList(Search search) throws Exception {
		// TODO Auto-generated method stub
		List<Auction> list = auctionDao.getAuctionList(search);
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

}