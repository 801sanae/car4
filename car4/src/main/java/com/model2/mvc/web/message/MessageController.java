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


@Controller
public class MessageController {

	///Field
	@Autowired
	@Qualifier("messageServiceImpl")
	private MessageService messageService;
	public Message message;
	

	public MessageController(){
		System.out.println("Constructor");
		System.out.println(this.getClass());
	}

	
	@RequestMapping("/addMessage.do")
	public String addMessage(@ModelAttribute("message") Message message, HttpSession session) throws Exception {	
		return "redirect:user/welcome.jsp";		
	}
}