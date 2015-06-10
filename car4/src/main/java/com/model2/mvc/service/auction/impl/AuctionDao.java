package com.model2.mvc.service.auction.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Car;

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
	public List<Auction> getAuctionList(Map<String, Object> hashMap) throws Exception {
		List<Auction> aaa = sqlSession.selectList("AuctionMapper.getAuctionList", hashMap);
		System.out.println("AuctionDao : "+aaa);
		return aaa;
	}
	//총 게시물 수
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("AuctionMapper.getTotalCount", search);
	}

	//auctionNo로 1개 auction내역 겟
	public Auction getAuction(int auctionNo) {
		System.out.println("4번"+auctionNo);
		return sqlSession.selectOne("AuctionMapper.getAuction", auctionNo);
	}
	
	public void auctionInfo(Auction auction) throws Exception {
		sqlSession.insert("AuctionMapper.auctionInfo", auction);
	}

	public void addAuctionCar(Map<String, Object> add) {
		System.out.println("1리"+add.get("car"));
		System.out.println("2리"+add.get("auction"));
		
		sqlSession.insert("AuctionListMapper.auctionCar", add);
	}
	
	//낙찰 후 auction테이블의 success_car 변경
	public void updateAuction(int carNo, int auctionNo) throws Exception {
	
		Map<String, Integer> hashMap = new HashMap<String, Integer>();
		hashMap.put("carNo", carNo);
		hashMap.put("auctionNo", auctionNo);
		
		sqlSession.update("AuctionMapper.updateAuction", hashMap);
	}
}	
