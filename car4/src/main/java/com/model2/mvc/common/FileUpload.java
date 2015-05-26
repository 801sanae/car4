package com.model2.mvc.common;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	
	private List<MultipartFile> upfile;
	private String fileName;
	private int fileNo;
	
	public FileUpload(){
		System.out.println(this.getClass());
	}
	
	public List<MultipartFile> getUpfile() {
		return upfile;
	}
	public void setUpfile(List<MultipartFile> upfile) {
		this.upfile = upfile;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
}




