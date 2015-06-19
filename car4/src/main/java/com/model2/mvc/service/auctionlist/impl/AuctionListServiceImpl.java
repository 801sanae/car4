package com.model2.mvc.service.auctionlist.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.auctionlist.AuctionListService;
import com.model2.mvc.service.domain.AuctionList;
import com.model2.mvc.service.domain.Car;

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
	
	// 내가 등록한 각 차들의 입찰정보 - 낙찰여부/옥션정보
	public List<AuctionList> getBidListByCarNo(int carNo) throws Exception {
		System.out.println("AuctionListServiceImpl에서 찍은 carNo 값 : "+carNo);
		return auctionListDao.getBidListByCarNo(carNo);
	}


}