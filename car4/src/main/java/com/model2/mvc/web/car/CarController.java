package com.model2.mvc.web.car;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.common.FileUpload;
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
		
		
		car.setCarNum(request.getParameter("p_carNum"));
		car.setManuCountry(request.getParameter("p_manuCountry"));
		car.setManuCo(request.getParameter("p_manuCo"));
		car.setModel(request.getParameter("p_model"));
		car.setColor(request.getParameter("p_color"));
		car.setYear(Integer.parseInt(request.getParameter("p_year")));
		car.setCarYear(Integer.parseInt(request.getParameter("p_carYear")));
		car.setTransmission(request.getParameter("p_transmission"));
		car.setFuel(request.getParameter("p_fuel"));
		car.setCc(Integer.parseInt(request.getParameter("p_cc")));
		car.setMileage(Integer.parseInt(request.getParameter("p_mileage")));
		car.setSell(request.getParameter("p_sell"));
		car.setAccident(request.getParameter("p_accident"));
		carService.addCar(car);
		
		
		//CarOption
		carOption.setPowerWindow(request.getParameter("p_powerWindow"));
		carOption.setAirCorn(request.getParameter("aircorn"));
		carOption.setFullAutoAircorn(request.getParameter("p_fullAutoAircorn"));
		
		carOption.setSunRoof(request.getParameter("sunRoof"));
		carOption.setPnrmSunRoof(request.getParameter("pnrmSunRoof"));
		carOption.setHidRam(request.getParameter("hidRam"));
		
		carOption.setNavi(request.getParameter("navi"));
		carOption.setHipass(request.getParameter("hipass"));
		carOption.setBlackBox(request.getParameter("blackBox"));
		
		carOption.setDriverAirBag(request.getParameter("driverairbag"));
		carOption.setDriverFriendAirBag(request.getParameter("driverFriendAirBag"));
		carOption.setSideAirBag(request.getParameter("sideAirBag"));
		
		carOption.setTurboChaser(request.getParameter("turbochaser"));
		carOption.setSuperChaser(request.getParameter("superchaser"));
		carOption.setAirrowFigher(request.getParameter("airrowFigher"));
		carOption.setCar(carService.getCar(car.getCarNum()));
		
	
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