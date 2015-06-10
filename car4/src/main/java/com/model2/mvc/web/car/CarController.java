package com.model2.mvc.web.car;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.file.FileService;


@Controller
public class CarController {

	///Field
	@Autowired
	@Qualifier("carServiceImpl")
	private CarService carService;
	public Car car;
	public CarOption carOption;
	

	@Autowired
	ServletContext ctx;
	
	int countNo;
	int indexNo;
	
	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;
	public FileUpload fileupload;
	
	public CarController(){
		System.out.println("Constructor");
		System.out.println(this.getClass());
	}

	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;



	@RequestMapping("/addCar.do")
	public String addCar(FileUpload fileUpload, @ModelAttribute("car") Car car, @ModelAttribute("carOption") CarOption carOption, HttpSession session, HttpServletRequest request) throws Exception {

		//Business Logic
		car.setUser((User)session.getAttribute("user"));
		System.out.println("나와?"+car.getUser());
		
		System.out.println("car"+car);
		carService.addCar(car);
		
		//CarOption

		
		carOption.setCar(carService.getCar(car.getCarNum()));
		System.out.println("CarOption"+carOption.getCar());
		carService.addOption(carOption);
		
		
		fileUpload.setCar(carService.getCar(car.getCarNum()));
		//fileUpLoad
		List<MultipartFile> list = fileUpload.getUpfile();
		
		System.out.println("List : " + list);
		
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
					String fileUrl= "image/"+fileName;
					
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
		
		return "redirect:user/welcome.jsp";
	}

	
	
	
	
	@RequestMapping("/addOption.do")
	public String addOption( @ModelAttribute("carOption") CarOption carOption, HttpSession session ) throws Exception {

		System.out.println("/addOption.do");
		//Business Logic
		carOption.setCar(car);
		System.out.println("나와?"+car);
		
		return "redirect:user/welcome.jsp";
	}
	

	
	//지워도될부분
	@RequestMapping("/carView.do")
	public String listCar(@ModelAttribute("serach") Search search, Model model , 
												HttpServletRequest request)throws Exception{
		System.out.println("/carView.do");
		//**********Car 정보제공 
		carService.carView("가222");
		carService.carViewOption(43001);
		
		
		fileService.getFile(58001);
		
		FileUpload file = fileService.getFile(58001);
				
		System.out.println("Board"+file.getImgPath());
		
		model.addAttribute("car",car);
		model.addAttribute( "file", file);
		
		//**********Car 정보제공  끝---------------
		
		//Page 나누기 부분 
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic ����
		Map<String , Object> map=carService.getCarList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model �� View ����
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		
		return "forward:carView.jsp";
	}
	//지워도될부분
	
	
	
	
	private FileService FileServiceImpl() {
		// TODO Auto-generated method stub
		return null;
	}

	

	@RequestMapping("/check.do")
	public String check( @ModelAttribute("car") Car car, HttpSession session, HttpServletRequest request) throws Exception {

		System.out.println("/check.do");
		//Business Logic
		
		System.out.println("Form"+request.getParameter("qu"));
		String temp = request.getParameter("qu");
		String[] t  = temp.split("&");
		for(String str : t) {
			System.out.println("SPLIT (((((   "+str);
		}
		carService.addCar(car);
		session.setAttribute("car", car);

		return "redirect:user/welcome.jsp";
	}
	
	@RequestMapping("/getCars.do")
	   public String getCars( @ModelAttribute("car") Car car,@ModelAttribute("carOption") CarOption carOption, 
	         @ModelAttribute("fileUpload") FileUpload fileUpload ,HttpSession session, HttpServletRequest request, 
	         Model model) throws Exception {

	      System.out.println("/getCars.do");
	      System.out.println(car.getCarNo());
	      //int carNo = Integer.parseInt(request.getParameter(carNo+""));
	      
	      //Business Logic
	      //User user = userService.getUser(userId);
	      Car cars = carService.getCarInfo2(car.getCarNo());
	      CarOption carOptions = carService.getCarInfo3(car.getCarNo());
	      Map<String , Object> map =fileService.getFile2(car.getCarNo());
	      
	   
	      // Model 과 View 연결
	      model.addAttribute("car", cars);
	      model.addAttribute("carOption", carOptions);
	      model.addAttribute("list", map.get("list"));

	      return "forward:/my_sell2.jsp";
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