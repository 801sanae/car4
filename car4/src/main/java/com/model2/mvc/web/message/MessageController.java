package com.model2.mvc.web.message;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.common.FileUpload;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;
import com.model2.mvc.service.domain.Message;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.file.FileService;
import com.model2.mvc.service.message.MessageService;
import com.model2.mvc.service.user.UserService;


@Controller
public class MessageController {

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	//=10;
	
	///Field
	@Autowired
	@Qualifier("messageServiceImpl")
	private MessageService messageService;
	public Message message;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	//default Constructor
	public MessageController(){
		System.out.println(this.getClass());
	}
	
	@RequestMapping("/addMessageContents.do")
	public String addMessageContents(
			@ModelAttribute("message") Message message,
			@RequestParam("userNo") int userNo,
			Model model,
			HttpServletRequest request,
			HttpSession session) throws Exception {	
		System.out.println("/addMessage.do");
		
		User sender = (User)session.getAttribute("user");
		User receiver = userService.getUserForNo(userNo);
		
		message.setSendUser(sender.getUserNo()); 
		message.setUser(receiver);
		
		messageService.addMessage(message);
		 
		model.addAttribute("message",message);
		
		return "forward:message/successMessage.jsp";		
	}
	
	//리스트 뿌리기
	@RequestMapping("/listMessage.do")
	public String listAuction( 
			@ModelAttribute("search") Search search, 
			Model model, HttpSession session) throws Exception {

		System.out.println("listMessage.do");
		
		if(search.getCurrentPage()==0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		//auctionlist에서 로그인한 userNo와같은 userNo를 찾기위해
		//int라서 null, nullstring은 안되므로 로그인 안했을떈 userNo를 0으로 셋팅
//		int userNo = 0;
//		if( session.getAttribute("user") != null) {
//			userNo = ((User)session.getAttribute("user")).getUserNo();
//		}
		//목록들을 전달하기 위해
		
		System.out.println("5");
		
		int userNo = ((User)session.getAttribute("user")).getUserNo();
		
		
		Map<String, Object> map = messageService.getMessageList(userNo, search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);

		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);


		return "forward:/listMessage.jsp";
	}
	
	@RequestMapping("/getMessage.do")
	public String getMessage(
			@ModelAttribute("message") Message message, 
			@RequestParam("messageNo") int messageNo,
			Model model, HttpSession session) throws Exception {
		System.out.println("/getMessage.do");
		
		System.out.println("::messageNo="+messageNo);
		
		messageService.updateTranCode(messageNo);
		message = messageService.getMessage(messageNo);
		
		
		model.addAttribute("message", message);
		
		return "forward:/getMessage.jsp";		
	}

	@RequestMapping("/deleteMessage.do")
	public String deleteMessage(@ModelAttribute("message") Message message, 
			@RequestParam("messageNo") int messageNo,
			Model model, HttpSession session) throws Exception {	
		System.out.println("/deleteMessage.do");
		
		System.out.println("::messageNo="+messageNo);
		
		messageService.deleteMessage(messageNo);
		
		return "forward:/listMessage.do";		
	}
}