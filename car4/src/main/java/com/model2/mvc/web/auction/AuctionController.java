package com.model2.mvc.web.auction;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.auction.AuctionService;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.file.FileService;
import com.model2.mvc.service.user.UserService;

//
@Controller
public class AuctionController {

	///Field
	@Autowired
	@Qualifier("auctionServiceImpl")
	private AuctionService auctionService;
	public Auction auction;

	@Autowired
	@Qualifier("carServiceImpl")
	private CarService carService;
	public Car car;
	
	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	public User user;

	@Autowired
	ServletContext ctx;
	
	int countNo;
	int indexNo;
	
	
	//default Constructor
	public AuctionController(){
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	//=10;
	
	
	@RequestMapping("/addAuction.do")
	public String addauction(@ModelAttribute("auction") Auction auction, Model model, HttpSession session ) throws Exception {

	System.out.println("/addAuction.do");

	User user = (User)session.getAttribute("user");
	auction.setUser(user);

	//Business Logic
	auctionService.addAuction(auction);
	return "redirect:/listAuction.do";
	}

	
	
	//리스트 뿌리기
	@RequestMapping("/listAuction.do")
	public String listAuction( @ModelAttribute("search") Search search, Model model, HttpSession session) throws Exception {

	System.out.println("listAuction.do");

	if(search.getCurrentPage()==0) {
		search.setCurrentPage(1);
	}


	System.out.println("1");
	search.setPageSize(pageSize);
	
	System.out.println("2");
	//auctionlist에서 로그인한 userNo와같은 userNo를 찾기위해

	//int라서 null, nullstring은 안되므로 로그인 안했을떈 userNo를 0으로 셋팅
	int userNo = 0;
	
	if( session.getAttribute("user") != null) {
		userNo = ((User)session.getAttribute("user")).getUserNo();
	}
	
	System.out.println("3");

	//목록들을 전달하기 위해
	Map<String, Object> map = auctionService.getAuctionList(userNo, search);
	System.out.println("4");

	Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
	System.out.println(resultPage);

	model.addAttribute("list", map.get("list"));
	model.addAttribute("resultPage", resultPage);
	model.addAttribute("search", search);
	

	return "forward:/listAuction.jsp";
	}
	
	
	@RequestMapping("/auctionInfo.do")
	public String auctionInfo( @ModelAttribute("auction") Auction auction, Model model, HttpSession session,HttpServletRequest request ) throws Exception {


		System.out.println("/auctionInfo.do");
		//접속된 유저정보를 통해 판매자 정보를 불러온다.
		User user = (User)session.getAttribute("user");
		
		//판매자정보 불러오는  부분 
		carService.getAuction(user.getUserNo());
		
		List<Car> list = carService.getAuction(user.getUserNo());

		fileService.getFile(4001);
		
		FileUpload file = fileService.getFile(4001);
		
		System.out.println("Board"+file.getImgPath());
		
		
		model.addAttribute( "file", file);
		
		
		//auction클릭시 발생하는 부분 
		auction = auctionService.getAuction(auction.getAuctionNo());
		auctionService.auctionInfo(auction);
		
		model.addAttribute("list", list);
		model.addAttribute("auction", auction);
		
		return "forward:/auction/auction_info.jsp";
	}
	
	@RequestMapping("/bidAdd.do")
	public String bidAdd( @ModelAttribute("auction") Auction auction, Model model, HttpServletRequest request) throws Exception {
		
		
		//접속된 유저정보를 통해 판매자 정보를 불러온다.
		/*carService.getCar(request.getParameter("carNum"));
		System.out.println("Car정보"+carService.getCar(request.getParameter("carNum")));
		auctionService.getAuction(auction.getAuctionNo());
		System.out.println("Auction정보"+auctionService.getAuction(auction.getAuctionNo()));
		*/
		 
		Map<String, Object> add = new HashMap<String,Object>();
			add.put("car", carService.getCar(request.getParameter("carNum")));
			add.put("auction", auctionService.getAuction(auction.getAuctionNo()));
		auctionService.addAuctionCar(add);
		//auctionListMapper값 넣기.
		
		return "forward:/auction/auction_info.jsp";
	}
	

	

		@RequestMapping("/getAuctionView.do")
		public String listCar(@ModelAttribute("serach") Search search, Model model , 
													HttpServletRequest request, Auction auction)throws Exception{
			System.out.println("/getAuctionView.do");
			//**********Car 정보제공 
			System.out.println("auction.getAuctionNo() :::::::: "+ auction.getAuctionNo() );
			
			Auction dbAuction = auctionService.getAuction(auction.getAuctionNo()); //auctionNo 가져와서 쿼리
			
			System.out.println("dbAuction ::::" + dbAuction);
//			auctionService.getAuction();
//			carService.carView("가222");
//			carService.carViewOption(43001);
			
			
//			fileService.getFile(61001);
			
//			FileUpload file = fileService.getFile(61001);
			
//			System.out.println("Board"+file.getImgPath());
			
			model.addAttribute("auction", dbAuction);
//			model.addAttribute( "file", file);
			
//			**********Car 정보제공  끝---------------
			
			
			
			
//			//Page 나누기 부분 
//			if(search.getCurrentPage() ==0 ){
//				search.setCurrentPage(1);
//			}
//			search.setPageSize(pageSize);
//			
//			// Business logic ����
//			Map<String , Object> map=carService.getCarList(search);
//			
//			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
//			System.out.println(resultPage);
//			
//			// Model �� View ����
//			model.addAttribute("list", map.get("list"));
//			model.addAttribute("resultPage", resultPage);
//			model.addAttribute("search", search);
//			
			
			return "forward:carView.jsp";
		}
		
		
		@RequestMapping("/joinAuctionView.do")
		public String joinAuctionView(Model model , 
				HttpServletRequest request, Auction auction) throws Exception{
			
			System.out.println("/getAuctionView.do");

			System.out.println("auction.getAuctionNo() ::::::::: "+ auction.getAuctionNo() );
			
			Auction dbAuction = auctionService.getAuction(auction.getAuctionNo()); //auctionNo 가져와서 쿼리
			
			model.addAttribute("auction", dbAuction); //모델 dbAuction 연결

			return "forward:auctionInfo.jsp";
		}
		
		@RequestMapping("/getSeller.do")
		public String getSeller(
				@RequestParam("carNo") int carNo, 
				HttpServletRequest request, HttpSession session, Model model) throws Exception{
			System.out.println("/test.do");

			//login user = 산다는놈 user 
			User user =(User)session.getAttribute("user");

			System.out.println("::user = "+user);

			//파는놈 카넘버
			Car car = carService.getCar2(carNo);

			System.out.println("::car"+car);

			//seller = 파는놈의 각정보가 담 seller
			User seller =userService.getUserForNo(car.getUser().getUserNo());

			System.out.println("::seller="+seller);


			//TODO

			//여기까진 잘나옴
			//SelectCar
			//바구니에 담기
			model.addAttribute("user", user);

			model.addAttribute("seller", seller);

			model.addAttribute("car",car);

			//model.addAttribute("fileUpload", fileUpload1);

			return "forward:getSeller.jsp";
		}
		
		

		//getSeller.jsp에서 사는사람이 [낙찰]을 누르면~
		@RequestMapping("mypage.do")
		public String Mypage(@RequestParam("carNo") int carNo, @RequestParam("auctionNo") int auctionNo) throws Exception {

		System.out.println("/mypage.do");
		
		//낙찰 후 auction테이블의 success_car 변경
		auctionService.updateAuction(carNo, auctionNo);
		//낙찰 후 car테이블의 tran_code 변경
		carService.updateCar(carNo);
		
		return "redirect:/mypage.jsp";
		}


}
		
		
