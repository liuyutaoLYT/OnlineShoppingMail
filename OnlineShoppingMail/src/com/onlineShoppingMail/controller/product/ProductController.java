package com.onlineShoppingMail.controller.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.indentEntity;
import com.onlineShoppingMail.entity.userentity;
import com.onlineShoppingMail.service.product.Cart;
import com.onlineShoppingMail.service.product.CartItem;
import com.onlineShoppingMail.service.product.ProductServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String productView (Model model ){
		List<ProductEntity> list = new ArrayList<ProductEntity>();
		list = this.productServiceImpl.findAll();
		model.addAttribute("list", list);
		return "shop";
	}
	@RequestMapping(value="cart",method=RequestMethod.GET)
	public String showCart(@RequestParam("productid") int id, HttpSession session, Model model) {
		userentity u = (userentity) session.getAttribute("s");
		if(u==null){
			return "login";
		}
		Cart cart = this.productServiceImpl.addCart(id, session);
		
		return "forward:/product/view";
	}
	
	@RequestMapping(value="show",method=RequestMethod.GET)
	public String showCar(HttpSession session, Model model) {
		userentity u = (userentity) session.getAttribute("s");
		if(u==null){
			return "login";
		}
		
		return "cart";
	}
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String deleteCar(@RequestParam("productid") int id,HttpSession session, Model model) {
		this.productServiceImpl.eidtCart(id, session);
		
		return "cart";
	}
	@RequestMapping(value="empty",method=RequestMethod.GET)
	public String emptyCar(HttpSession session, Model model) {
		this.productServiceImpl.enptyCart(session);
		
		return "cart";
	}
	@RequestMapping(value="indent",method=RequestMethod.GET)
	public String indent(HttpServletRequest request,@RequestParam("country") String country,
			@RequestParam("firstname") String firstname,@RequestParam("lastname") String lastname,
			@RequestParam("companyname") String companyname,@RequestParam("emailaddress") String emailaddress,
			@RequestParam("phonenum") int phonenum,@RequestParam("address") String address,
			@RequestParam("city") String city,@RequestParam("state") String state,
			@RequestParam("zipcode") String zipcode){
		indentEntity i = this.productServiceImpl.addentity( country, firstname, lastname, companyname, emailaddress, phonenum, address, city, state, zipcode);
		
		HttpSession session = request.getSession();
		session.setAttribute("i", i);
		System.out.println(i.getAddress());
		return "forward:/product/view";
	}
	@RequestMapping(value="checkout",method=RequestMethod.GET)
	public String checkout (HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		indentEntity in = (indentEntity) session.getAttribute("i");
			model.addAttribute("in", in);
			
			
			return "checkout";
		
	}
	
	
	
}
