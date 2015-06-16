package com.model2.mvc.service.auctionlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.auctionlist.AuctionListService;
import com.model2.mvc.service.domain.AuctionList;

@Service("auctionListServiceImpl")
public class AuctionListServiceImpl implements AuctionListService {

	// /Field
	@Autowired
	@Qualifier("auctionListDao")
	private AuctionListDao auctionListDao;

	public void setAuctionListDao(AuctionListDao auctionListDao) {
		this.auctionListDao = auctionListDao;
	}

	// /Constructor
	public AuctionListServiceImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public void addAuctionList(AuctionList auctionList) throws Exception {
		auctionListDao.addAuctionList(auctionList);
	}

	@Override
	public List<AuctionList> getBidList(int auctionNo) {
		return auctionListDao.getBidList(auctionNo);
	}

	@Override
	public AuctionList getAuction(AuctionList auctionList) {
		return auctionListDao.getAuctionList(auctionList);
	}

}