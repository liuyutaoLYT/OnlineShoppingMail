package com.onlineShoppingMail.dao.user;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.onlineShoppingMail.entity.userentity;
@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	//用戶插入
	
		public void save(userentity userentity) throws Exception {
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(userentity);
			
			tx.commit();

			
		}

		
}
