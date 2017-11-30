package com.onlineShoppingMail.dao.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.userentity;

@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public List<ProductEntity> findAll(){
		List<ProductEntity> l = new ArrayList();
		l= (List<ProductEntity>) this.sessionFactory.openSession().createQuery("from ProductEntity").list();
		return l;
	}
	public ProductEntity findById(Integer id) {	
		ProductEntity p = (ProductEntity)this.sessionFactory.openSession().createQuery("from ProductEntity where productid = ?").setParameter(0, id).uniqueResult();
		
		return p;
	}

}
