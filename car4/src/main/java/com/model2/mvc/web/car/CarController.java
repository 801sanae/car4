package com.model2.mvc.web.car;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Car;


@Controller
public class CarController {

	///Field
	@Autowired
	@Qualifier("carServiceImpl")
	private CarService carService;
	public Car car;


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
		System.out.println("Come");
		carService.addCar(car);
		session.setAttribute("car", car);

		return "redirect:user/welcome.jsp";
	}

}