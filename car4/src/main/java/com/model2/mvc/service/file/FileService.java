package com.model2.mvc.service.file;

import java.util.List;
import java.util.Map;

import com.model2.mvc.common.FileUpload;

public interface FileService {
		
	public void addFile(FileUpload file) throws Exception;

	public FileUpload getFile(int carNo) throws Exception;
	public List<FileUpload> getFileList(int carNo) throws Exception;
	
	//상훈이형님 부분 
	public Map<String, Object> getFile2(int carNo) throws Exception;
}