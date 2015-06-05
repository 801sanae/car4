package com.model2.mvc.web.auction;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.auction.AuctionService;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.file.FileService;

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
	public FileUpload fileupload;

	
	
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
	auction.setUserNo(user);

	//Business Logic
	auctionService.addAuction(auction);
	session.setAttribute("auction", auction);
	return "redirect:/listAuction.do";
	}

	
	
	//리스트 뿌리기
	@RequestMapping("/listAuction.do")
	public String listAuction( @ModelAttribute("search") Search search, Model model) throws Exception {

	System.out.println("listAuction.do");

	if(search.getCurrentPage()==0 ) {
	search.setCurrentPage(1);
	}

	search.setPageSize(pageSize);

	//목록들을 전달하기 위해
	Map<String, Object> map = auctionService.getAuctionList(search);

	Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
	System.out.println(resultPage);

	model.addAttribute("list", map.get("list"));
	model.addAttribute("resultPage", resultPage);
	model.addAttribute("search", search);
	//model.addAttribute("menu", menu);

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

		// asdfasdflaksjdflksjdf
		
		
		
}