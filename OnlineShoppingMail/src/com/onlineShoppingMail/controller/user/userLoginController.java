package com.onlineShoppingMail.controller.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspsmart.upload.Request;
import com.onlineShoppingMail.entity.userentity;
import com.onlineShoppingMail.service.user.loginServiceImpl;

@Controller
@RequestMapping("/login")
public class userLoginController {
	@Resource
	private loginServiceImpl loginServiceImpl;
	@RequestMapping(value="/log", method=RequestMethod.POST)
	
	public String login (@RequestParam("psw") String password ,
			@RequestParam("useremail") String useremail, Model model,HttpSession session){
		userentity u = this.loginServiceImpl.login(useremail,password);
		if(u!=null){
			model.addAttribute(u);
			session.setAttribute("s", u);
			return "index";
		}else{
			model.addAttribute("error", "账号密码错误");
			return "error";
		}
	}
	
}
