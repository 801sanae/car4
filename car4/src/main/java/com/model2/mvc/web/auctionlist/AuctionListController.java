package com.model2.mvc.web.auctionlist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.service.auction.AuctionService;
import com.model2.mvc.service.auctionlist.AuctionListService;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.AuctionList;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.file.FileService;

//
@Controller
public class AuctionListController {

	///Field
	@Autowired
	@Qualifier("auctionListServiceImpl")
	private AuctionListService auctionListService;
	public AuctionList auctionList;

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
	public AuctionListController(){
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	//=10;
	
//	@RequestMapping("/bidAdd.do")
//	public String bidAdd( @ModelAttribute("auction") Auction auction, Model model, HttpServletRequest request) throws Exception {
//		
//		
//		//접속된 유저정보를 통해 판매자 정보를 불러온다.
//		/*carService.getCar(request.getParameter("carNum"));
//		System.out.println("Car정보"+carService.getCar(request.getParameter("carNum")));
//		auctionService.getAuction(auction.getAuctionNo());
//		System.out.println("Auction정보"+auctionService.getAuction(auction.getAuctionNo()));
//		*/
///*		 
//		Map<String, Object> add = new HashMap<String,Object>();
//			add.put("car", carService.getCar(request.getParameter("carNum")));
//			add.put("auction", auctionService.getAuction(auction.getAuctionNo()));
//		auctionService.addAuctionCar(add);
//		//auctionListMapper값 넣기.
//		
//		return "forward:/auction/auction_info.jsp";
//	}
//	*/
	@RequestMapping("/addAuctionList.do")
	public String addAuctionList(AuctionList auctionList, Auction auction, Car car,  Model model, HttpServletRequest request) throws Exception {
		
		System.out.println("auction:::::::: " + auction);
		
		System.out.println("car:::::::: " + car);
		
		auctionList.setBidAuctionNo(auctionService.getAuction(auction.getAuctionNo()));
		// auctionNo로 Auction 정보 받아오기 
		
		auctionList.setBidCarNo(carService.getCar2(car.getCarNo()));
		// carNo로 Car받기 selectOne
				
		auctionListService.addAuctionList(auctionList);
		
		Auction dbAuction = auctionService.getAuction(auction.getAuctionNo()); //옥션 정보 가져오기
		
		model.addAttribute("auction", dbAuction); //옥션 정보 연결
		System.out.println("auction.getAuctionNo()::::::" + auction.getAuctionNo());
		List<AuctionList> list = auctionListService.getBidList(auction.getAuctionNo()); //???????
		
		System.out.println("list ::::::" + list.get(0).getAuctionListNo() );
		//list.get(0).getBidCarNo().getCarNo()
		model.addAttribute("auctionList", list);

		
		return "forward:/getAuctionView.do";
	}

	
}