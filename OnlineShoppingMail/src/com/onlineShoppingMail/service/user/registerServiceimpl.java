package com.onlineShoppingMail.service.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onlineShoppingMail.dao.user.LoginUserDaoImpl;
import com.onlineShoppingMail.dao.user.UserDaoImpl;
import com.onlineShoppingMail.entity.userentity;

@Service
@Transactional(readOnly=true)
public class registerServiceimpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	@Resource LoginUserDaoImpl loginUserDaoImpl;
//	@Resource
//	private LoginUserDaoImpl loginUserDaoImpl;
	
//	public String toregisterUser(userentity userentity){
//		String email = userentity.getUserEmail();
////		userentity u = this.loginUserDaoImpl.findByemail(9);
////		if (u != null) {
////			return "此用户已注册";
////		}else{
////			return "此用户可以注册";
////		}
	
		
//	}
	public userentity checkemail(String useremail){
		userentity l = this.loginUserDaoImpl.findByid(useremail);
		if (l!=null){
				return l;
			}else{
				return null;
			}
	}
		
	public void registerUser(userentity userentity){
		try {
			this.userDaoImpl.save(userentity);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
