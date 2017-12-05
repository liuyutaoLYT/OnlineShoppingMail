package com.onlineShoppingMail.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.onlineShoppingMail.entity.userentity;
import com.onlineShoppingMail.service.user.loginServiceImpl;
import com.onlineShoppingMail.service.user.registerServiceimpl;

@Controller
@RequestMapping("/register")
public class UserRegisterController {
	@Resource
	private registerServiceimpl registerServiceImpl;
	@Resource
	private loginServiceImpl loginServiceImpl;
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String register (@RequestParam("userName") String userName,
			@RequestParam("psw") String password ,
			@RequestParam("email") String useremail,userentity userentity,@RequestParam("file") CommonsMultipartFile file) throws IllegalStateException, IOException
					{
		long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/"+new Date().getTime()+file.getOriginalFilename();
         
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        long  endTime=System.currentTimeMillis();
//		String userheadportrait = request.getParameter("uhp");
		userentity.setPassword(password);
		userentity.setUserEmail(useremail);

		userentity.setUserName(userName);
		userentity.setUserheadportrait(path);
		this.registerServiceImpl.registerUser(userentity);
		//		String s = this.registerServiceImpl.toregisterUser(userentity);
//		if (s == "该用户可以注册" ){
//			this.registerServiceImpl.registerUser(userentity);
//		}
		return "regist";
	}

	@RequestMapping(value="/checkemail", method=RequestMethod.POST)
	@ResponseBody
	public String checkemail(@RequestParam("email") String email){
		userentity u = registerServiceImpl.checkemail(email);
		  boolean flag = false;
		  try{
		    String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		    Pattern regex = Pattern.compile(check);
		    Matcher matcher = regex.matcher(email);
		    flag = matcher.matches();
		  }catch(Exception e){
			    flag = false;
			   }
		  if(flag==false){
			  return "1";
		  }
		if(u!=null){
			
			return "true";
		}else{
			return "false";
		}
	}
	@RequestMapping(value="/checkpsw", method=RequestMethod.POST)
	@ResponseBody
	public String checkpsw(@RequestParam("psw") String psw,@RequestParam("psw1") String psw1){
		if(psw.equals(psw1)){
			return "false";
		}else{
			return "true";
		} 
	}
}
