package com.onlineShoppingMail.service.product;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspsmart.upload.Request;
import com.onlineShoppingMail.dao.product.ProductDaoImpl;
import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.indentEntity;

@Service
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	
	@Transactional(readOnly=true)
	public List<ProductEntity> findAll(){
		List<ProductEntity> l = new ArrayList<ProductEntity>();
		l=this.productDaoImpl.findAll();
		return l;
		
	}
	@Transactional(readOnly=true)
	public Cart addCart(int id, HttpSession session) {

		ProductEntity product = this.productDaoImpl.findById(id);
		
		List list = new ArrayList<>();

		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
		}
		cart.addCart(product);
		Iterator i = cart.container.values().iterator();
		while (i.hasNext()) {
			CartItem ci = (CartItem) i.next();
			list.add(ci);
		}

		session.setAttribute("cart", cart);
		session.setAttribute("cartlist", list);
		return cart;
	}
	public Cart eidtCart(int id, HttpSession session) {

		ProductEntity product = this.productDaoImpl.findById(id);
		
		List list = new ArrayList<>();
		Cart cart = (Cart) session.getAttribute("cart");
		cart.deleteCart(product);
		Iterator i = cart.container.values().iterator();
		while (i.hasNext()) {
			CartItem ci = (CartItem) i.next();
			list.add(ci);
		}
		if(cart==null){
			return null;
		}
		session.setAttribute("cart", cart);
		session.setAttribute("cartlist", list);
		return cart;
	}
	public Cart enptyCart(HttpSession session) {

		
		List list = new ArrayList<>();
		Cart cart = (Cart) session.getAttribute("cart");
		cart.empty();
		Iterator i = cart.container.values().iterator();
		while (i.hasNext()) {
			CartItem ci = (CartItem) i.next();
			list.add(ci);
		}
		if(cart==null){
			return null;
		}
		session.setAttribute("cart", cart);
		session.setAttribute("cartlist", list);
		return cart;
	}
	public indentEntity addentity( String country,
			 String firstname, String lastname,
			 String companyname, String emailaddress,
			 int phonenum, String address,
			 String city, String state,
			 String zipcode){
		indentEntity iden = new indentEntity();
		iden.setAddress(address);
		iden.setCity(city);
		iden.setCompanyname(companyname);
		iden.setCountry(country);
		iden.setEmailaddress(emailaddress);
		iden.setFirstname(firstname);
		iden.setLastname(lastname);
		iden.setPhonenum(phonenum);
		iden.setState(state);
		iden.setZipcode(zipcode);
		return iden;
	}
}
