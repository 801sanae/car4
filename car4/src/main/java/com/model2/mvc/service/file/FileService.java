package com.model2.mvc.service.file;

import java.util.List;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.service.domain.Car;

public interface FileService {
		
	public void addFile(FileUpload file) throws Exception;

	public FileUpload getFile(int carNo) throws Exception;
	public List<FileUpload> getFileList(int carNo) throws Exception;
}