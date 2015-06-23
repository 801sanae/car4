package com.model2.mvc.service.auctionlist.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.service.domain.AuctionList;
import com.model2.mvc.service.domain.Car;

@Repository("auctionListDao")
public class AuctionListDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public AuctionListDao() {
		System.out.println(this.getClass());
	}

	public void addAuctionList(AuctionList auctionList) throws Exception {
		sqlSession.insert("AuctionListMapper.addAuctionList", auctionList);
	}

	public List<AuctionList> getBidList(int auctionNo) {
		System.out.println("asdffffffff" + auctionNo);
		return sqlSession.selectList("AuctionListMapper.getBidList", auctionNo);
	}
	
	public AuctionList getAuctionList(AuctionList auctionList) {
		System.out.println("************"+auctionList);
		
		return sqlSession.selectOne("AuctionListMapper.getAuctionList", auctionList);
	}
	
	// 내가 등록한 각 차들의 입찰정보 - 낙찰여부/옥션정보
	public List<AuctionList> getBidListByCarNo(int carNo) throws Exception {
		System.out.println("AuctionListDao에서 찍은 carNo 값 : "+carNo);
		List<AuctionList> bidList = sqlSession.selectList("AuctionListMapper.getBidListByCarNo", carNo);
		System.out.println("AuctionListDao에서 찍은 bidList 값 : "+bidList);
		return bidList;
	}

	public void deleteAuctionList(int carNo) throws Exception{
		sqlSession.delete("AuctionListMapper.deleteAuctionList", carNo);
	}
	
}	
