package com.model2.mvc.web.common;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.service.file.FileService;

@Controller
public class FileUploadController {
	@Autowired
	ServletContext ctx;
	
	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;
	public FileUpload fileupload;


	public FileUploadController(){
		System.out.println(this.getClass());
	}
	
	int countNo;
	int indexNo;
	
	@RequestMapping(value="/addFile.do", method=RequestMethod.GET)
	public String returnForm(
			FileUpload fileUpload,
			Model model) {
		
        return "redirect:/sell-title.jsp";
		
	}
	
	@RequestMapping(value="*/addFile.do", method=RequestMethod.POST)
	public String upload(FileUpload fileUpload, HttpServletRequest request, Model model)throws Exception{

//			@RequestParam("fileName") MultipartFile uploadFile,
//			Model model, HttpServletRequest request) throws Exception{
		System.out.println("돌아간다 신나니?");
		
		List<MultipartFile> list = fileUpload.getUpfile();
		
		System.out.println("List : " + list);
		System.out.println("asdffffffffffffffffffff");
		for(MultipartFile file : list){
			System.out.println("돌아간다신난닼ㅋ");
			if(! file.isEmpty()){
				String originalFileName = file.getOriginalFilename();
				
				if (originalFileName != null) {
					
					System.out.println("--->");
					System.out.println(file.getOriginalFilename());
					System.out.println(file.getName());
					
					String originalFilename = file.getOriginalFilename();
					
					int lastIndex = originalFilename.lastIndexOf('.');
					
					String fileName = System.currentTimeMillis()
							+ "_" + getCountNo()
							+ originalFilename.substring(lastIndex);
					
					System.out.println("파일네임 ::::::::: " + fileName);
					
//					String fileUrl= "http://"+java.net.InetAddress.getLocalHost().getHostAddress()+":"+request.getServerPort()+ctx.getContextPath()+"/image/"+fileName;
					String fileUrl= "/image/"+fileName;
					
					System.out.println("fileUrl :::::::::::: " + fileUrl);
								
					String path = (String)ctx.getRealPath("/image") + "/" + fileName;
					
					File newFile = new File(path);
					
					if(! newFile.isDirectory()){
						newFile.mkdirs();
					}
					
					System.out.println("패스 : " + path);
					
					fileUpload.setImgPath(fileUrl);
					fileUpload.setImgNum(getCountIndex());
					
					try {
						file.transferTo(new File(path));
					} catch (Exception e) {
						e.printStackTrace();
					} 
					
					System.out.println("before::::");
					fileService.addFile(fileUpload);
					System.out.println("after::::");
				}
			}
		}
		System.out.println("asdfff");
		model.addAttribute("fileUpload", fileUpload);

		return "Upload";
	}
	
	synchronized private int getCountNo() {
		if (countNo > 1000)
			countNo = 0;
		return ++countNo;
	}
	
	synchronized private int getCountIndex() {
		if (indexNo > 1000)
			indexNo = 0;
		return ++indexNo;
	}
}