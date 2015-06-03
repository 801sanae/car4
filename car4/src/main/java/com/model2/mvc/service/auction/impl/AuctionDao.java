package com.model2.mvc.service.auction.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
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
	
	//리스트 뿌리기
	public List<Auction> getAuctionList(Search search) throws Exception {
		return sqlSession.selectList("AuctionMapper.getAuctionList", search);
	}
	//총 게시물 수
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("AuctionMapper.getTotalCount", search);
	}

	//auctionNo로 1개 auction내역 겟
	public Auction getAuction(int auctionNo) {
		return sqlSession.selectOne("AuctionMapper.getAuction", auctionNo);
	}
	
	public void auctionInfo(Auction auction) throws Exception {
		sqlSession.insert("AuctionMapper.auctionInfo", auction);
	}
	
	
	
}	
