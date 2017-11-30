package com.onlineShoppingMail.dao.user;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.onlineShoppingMail.entity.userentity;


@Repository
public class LoginUserDaoImpl{

	@Resource
	private SessionFactory sessionFactory;
	
	public userentity findByid(String useremail){
		userentity lu= (userentity) this.sessionFactory.openSession().createQuery("from userentity where useremail=?").setParameter(0
				, useremail).uniqueResult();
		if(lu!=null){
			return lu;
		}else{
			return null;
		}
	}
}
