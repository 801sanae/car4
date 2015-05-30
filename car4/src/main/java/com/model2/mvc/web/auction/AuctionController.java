package com.model2.mvc.web.auction;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.auction.AuctionService;


@Controller
public class AuctionController {

	///Field
	@Autowired
	@Qualifier("auctionServiceImpl")
	private AuctionService auctionService;
	public Auction auction;

	//default Constructor
	public AuctionController(){
		System.out.println(this.getClass());
	}

	@RequestMapping("/addAuction.do")
	public String addauction( @ModelAttribute("auction") Auction auction, Model model, HttpSession session ) throws Exception {

		System.out.println("/addAuction.do");
		//Business Logic
		auctionService.addAuction(auction);
		model.addAttribute("auction", auction);

		return "redirect:auction/auction.jsp";
	}
	

	
	


	
}