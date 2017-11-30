package com.onlineShoppingMail.service.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onlineShoppingMail.dao.user.LoginUserDaoImpl;
import com.onlineShoppingMail.entity.userentity;

@Service

public class loginServiceImpl {
	@Resource
	private LoginUserDaoImpl loginUserDaoImpl;
	@Transactional(readOnly=true)
	public userentity login(String useremail,String password){
		userentity l = this.loginUserDaoImpl.findByid(useremail);
		if (l!=null){
			if(l.getPassword().equals(password)){
				return l;
			}else{
				return null;
			}
			
		}else{
			return null;
		}
		
		
	}

}
