package com.model2.mvc.web.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.common.SendEmail;
import com.model2.mvc.service.auctionlist.AuctionListService;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.AuctionList;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.user.UserService;


@Controller
public class UserController {

	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	public User user;

	@Autowired
	@Qualifier("carServiceImpl")
	   private CarService carService;
	   public Car car;
	   
	@Autowired
	@Qualifier("auctionListServiceImpl")
	   private AuctionListService auctionListService;
	   public AuctionList auctionList;

	public UserController(){
		System.out.println(this.getClass());
	}

	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;


	@RequestMapping("/addUserView.do")
	public String addUserView() throws Exception {

		System.out.println("/addUserView.do");

		return "forward:/user/addUserView.jsp";
	}

	@RequestMapping("/addUser.do")
	public String addUser( @ModelAttribute("user") User user, HttpSession session ) throws Exception {

		System.out.println("/addUser.do");
		//Business Logic
		user.setPhone(user.getPhone1()+user.getPhone2()+user.getPhone3());
		userService.addUser(user);

		return "redirect:user/welcome.jsp";
	}

	@RequestMapping("/findUser.do")
	public String findUser(User user, Model model) throws Exception{

		System.out.println("/*****findId.do" + user);
		//Business Logic
		User dbUser = userService.findUserId(user);
		userService.findUserId(user);
		System.out.println("조합"+user);
		System.out.println("dbUser"+dbUser);

		model.addAttribute("findUser", dbUser);

		return "forward:/index.jsp";
	}

	@RequestMapping("/getUser.do")
	public String getUser( @RequestParam("userId") String userId , Model model ) throws Exception {

		System.out.println("/getUser.do");
		//Business Logic
		User user = userService.getUser(userId);
		// Model 과 View 연결
		model.addAttribute("user", user);

		return "forward:/user/getUser.jsp";
	}


	//내정보 수정페이지 넘어가기.
	@RequestMapping("/updateUserView.do")
	public String updateUserView(Model model, HttpSession session) throws Exception{
		session.getAttribute("user");
		model.addAttribute("user", user);
		
		return "forward:/user/updateUser.jsp";
	}

	//내정보 업데이트하기.
	@RequestMapping("/updateUser.do")
	public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

		System.out.println("/updateUser.do");
		//Business Logic
		userService.updateUser(user);

		String sessionId=((User)session.getAttribute("user")).getUserId();
		if(sessionId.equals(user.getUserId())){ //프로그램상 세션이 꼬여버렸을 경우(?)
			session.setAttribute("user", user);
		}

		return "redirect:/getUser.do?userId="+user.getUserId();
		//return "redirect:/getUser.do?userId="+user.getUserId();
	}


	@RequestMapping("/loginView.do")
	public String loginView() throws Exception{

		System.out.println("/loginView.do");

		return "redirect:index.jsp";
	}

	@RequestMapping("/login.do")
	public String login(@ModelAttribute("user") User user , HttpSession session ) throws Exception{

		System.out.println("/login.do");
		//Business Logic
		User dbUser=userService.getUser(user.getUserId());
		System.out.println("userName?:"+dbUser.getUserName());
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
		}

		return "redirect:index.jsp";
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session ) throws Exception{

		System.out.println("logout.do");
		session.invalidate();
		
		return "redirect:/index.jsp";
	}

	@RequestMapping("/checkDuplication.do")
	public String checkDuplication( @RequestParam("userId") String userId , Model model ) throws Exception{

		System.out.println("/checkDuplication.do");
		//Business Logic
		boolean result=userService.checkDuplication(userId);
		
		model.addAttribute("result", new Boolean(result));
		model.addAttribute("userId", userId);

		return "forward:/user/checkDuplication.jsp";
	}
	
	@RequestMapping("/listUser.do")
	public String listUser( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{

		System.out.println("/listUser.do");

		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);


		Map<String , Object> map=userService.getUserList(search);

		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		System.out.println(search);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/user/listUser.jsp";
	}
	
	@RequestMapping("/updatePassword.do")
	public String updatePassword( @ModelAttribute("user") User user , Model model , HttpSession session
			,HttpServletRequest request,HttpServletResponse reponse) throws Exception{
		
		String userId = request.getParameter("hideUserId");
		user.setUserId(userId);
		
		System.out.println("/updatePassword.do");
		//Business Logic
		userService.updatePassword(user);
		
			
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/emailAuth.do")
	   @ResponseBody
	   public ResponseEntity<String> emailAuth(HttpServletRequest request,
	         HttpServletResponse response)throws Exception{
	      
	      String email = request.getParameter("email");
	      
	      String authNum = "";
	      authNum = SendEmail.RandomNum();
	      
	      SendEmail.sendEmail(email, authNum);
	      
	      /*ModelAndView mv = new ModelAndView();
	      mv.setViewName("/emailAuth.jsp");
	      mv.addObject("email", email);
	      mv.addObject("authNum", authNum);*/
	      HttpHeaders headers = new HttpHeaders();
	      headers.set("Content-Type", "text/plain;charset=UTF-8");
	      
	      HashMap<String,String> result = new HashMap<String,String>();
	      result.put("status", "YES");
	      result.put("authNum", authNum);
	      
	      //객체를 JSON(JavaScript Object Notation) 형식의 문자열로 만들기
	      String jsonString = new Gson().toJson(result);
	      
	      return new ResponseEntity<String>(jsonString, headers, HttpStatus.OK);
	   }
	
	@RequestMapping("/getUserInfo.do")
	public String getUserInfo( @ModelAttribute("user") User user ,Model model , HttpSession session ) throws Exception{
		
		System.out.println("/getUserInfo.do");
		
		User users = (User)session.getAttribute("user");
		System.out.println("들어와1?"+user);
		
		//Business Logic
		User userInfo = userService.getUserInfo(users);
		
		// Model 과 View 연결
		model.addAttribute("user", users);
		model.addAttribute("userInfo", userInfo);
		return "forward:/car/sell-title.jsp";
	}
	
	
	@RequestMapping("/listUserSell.do")
	   public String getUserCarInfo(Model model , HttpSession session,
	         @ModelAttribute("search") Search search   ) throws Exception{
	      
	      System.out.println("/listUserSell.do");
	      if(search.getCurrentPage() ==0 ){
	         search.setCurrentPage(1);
	      }
	      search.setPageSize(pageSize);
	      
	      int userNo = ((User)session.getAttribute("user")).getUserNo();
	      
	      Map<String , Object> myCarMap = carService.getCarListByUserNo(userNo, search);
	      Page resultPage = new Page( search.getCurrentPage(), ((Integer)myCarMap.get("totalCount")).intValue(), pageUnit, pageSize);
	      System.out.println("####1. UserController - listUserSell.do : "+myCarMap);
	      System.out.println(resultPage);
	      System.out.println(search);
	     
	      List<Car> carList = (List<Car>) myCarMap.get("myCarList");
	      
	      System.out.println("####2. UserController - carList : "+carList);
	    
	      Map<String , Object> bidMapAll = new HashMap<String, Object>();
	      int carNo;
	      for(int i=0; i < carList.size() ; i++) {
	    	  carNo = carList.get(i).getCarNo();
		      System.out.println("####3. UserController - carNo: "+carNo);

		      List<AuctionList> bidList = auctionListService.getBidListByCarNo(carNo);
		      
		      System.out.println("####4. UserController - bidList : "+bidList);

		      String aaa = Integer.toString(i);
		      bidMapAll.put(aaa, bidList);
		      System.out.println("####5. UserController - carNo : "+carList.get(i).getCarNo());
		      
		      
		      System.out.println("BIDMAPALL " + bidMapAll.get("2") );
	      }
	      
	      System.out.println("####6. UserController - bidMapAll : "+bidMapAll);

	      model.addAttribute("myCarList", myCarMap.get("myCarList"));
	      model.addAttribute("bidMapAll", bidMapAll);
	      model.addAttribute("resultPage", resultPage);
	      model.addAttribute("search", search);
	      
	      return "forward:/car/my_sell.jsp";
	   }
	@RequestMapping("/index.do")
	public String index() throws Exception{
		
	
		return "redirect:/index.jsp";
	}
	
	
	
}