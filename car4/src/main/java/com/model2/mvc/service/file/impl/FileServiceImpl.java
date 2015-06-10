package com.model2.mvc.service.file.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.service.file.FileService;


@Service("fileServiceImpl")
public class FileServiceImpl implements FileService{
	
	///Field
	@Autowired
	@Qualifier("fileDao")
	private FileDao fileDao;
	public void setUserDao(FileDao fileDao) {
		this.fileDao = fileDao;
	}
	
	///Constructor
	public FileServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addFile(FileUpload file) throws Exception {
		fileDao.addFile(file);
	}
	public FileUpload getFile(int carNo) throws Exception {
		System.out.println("Servlce"+carNo);
		return fileDao.getFile(carNo);
	}
	@Override
	public List<FileUpload> getFileList(int carNo) throws Exception {
		return fileDao.getFileList(carNo);
	}
}