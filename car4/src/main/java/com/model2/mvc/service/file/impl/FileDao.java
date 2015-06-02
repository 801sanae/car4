package com.model2.mvc.service.file.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.service.domain.Car;

@Repository("fileDao")
public class FileDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public FileDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addFile(FileUpload file) throws Exception {
		sqlSession.insert("FileMapper.addFile", file);
	}
	public FileUpload getFile(int carNo) throws Exception {
		return sqlSession.selectOne("FileMapper.getFile", carNo);
	}
}