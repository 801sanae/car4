package com.model2.mvc.service.auction.impl;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.service.domain.Auction;

@Repository("auctionDao")
public class AuctionDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public AuctionDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addAuction(Auction auction) throws Exception {
		sqlSession.insert("AuctionMapper.addAuction", auction);
	}
}