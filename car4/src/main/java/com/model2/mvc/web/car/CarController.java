package com.model2.mvc.web.car;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;
import com.model2.mvc.service.domain.User;


@Controller
public class CarController {

	///Field
	@Autowired
	@Qualifier("carServiceImpl")
	private CarService carService;
	public Car car;
	public CarOption carOption;


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
	public String addCar( @ModelAttribute("car") Car car, HttpSession session ) throws Exception {

		System.out.println("/addCar.do");
		//Business Logic
		car.setUser((User)session.getAttribute("user"));
		System.out.println("나와?"+car.getUser());
		carService.addCar(car);
		session.setAttribute("car", car);
		
		return "redirect:user/welcome.jsp";
	}
	
	@RequestMapping("/addOption.do")
	public String addOption( @ModelAttribute("carOption") CarOption carOption, @ModelAttribute("car") Car car, HttpSession session ) throws Exception {

		System.out.println("/addOption.do");
		//Business Logic
		carOption.setCar(car);
		System.out.println("나와?"+car);
		
		return "redirect:user/welcome.jsp";
	}
	
	
	@RequestMapping("/check.do")
	public String check( @ModelAttribute("car") Car car, HttpSession session, HttpServletRequest request ) throws Exception {

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
}