package com.onlineShoppingMail.controller.product;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jspsmart.upload.Request;
import com.onlineShoppingMail.entity.Page;
import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.cartEntity;
import com.onlineShoppingMail.entity.indentEntity;
import com.onlineShoppingMail.entity.userentity;
import com.onlineShoppingMail.service.product.Cart;
import com.onlineShoppingMail.service.product.CartItem;
import com.onlineShoppingMail.service.product.ProductServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String productView (Model model,HttpSession session ){
		List<ProductEntity> list = this.productServiceImpl.findAll();
		session.setAttribute("list", list);
		model.addAttribute("list", list);
		return "shop";
	}
	@RequestMapping(value="cart",method=RequestMethod.GET)
	public String showCart(@RequestParam("productid") int productid, HttpSession session, Model model) throws Exception {
		userentity u = (userentity) session.getAttribute("s");
		if(u==null){
			return "login";
		}
		int userid = u.getUserid();
		this.productServiceImpl.addCart(productid, userid);
		
		return "forward:/product/view";
	}
	@RequestMapping(value="toshowproduct",method=RequestMethod.GET)
	public String toshowcart(Model model,@RequestParam("pageNum") String pageNum){
	
		
		if(pageNum==null){
			String PageNum = "1";
		}
		
		Page<ProductEntity> p=this.productServiceImpl.page(pageNum);
		model.addAttribute("page", p);
		return "productlist";
	}
	
	@RequestMapping(value="show",method=RequestMethod.GET)
	public String showCar(HttpSession session, Model model) {
		userentity u = (userentity) session.getAttribute("s");
		if(u==null){
			return "login";
		}
		int userid = u.getUserid();
		List<cartEntity> lc = this.productServiceImpl.findByUserId(userid);
		session.setAttribute("lc", lc);
		model.addAttribute("lc", lc);
		return "cart";
	}
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String deleteCar(@RequestParam("productid") int productid,HttpSession session) {
		userentity u = (userentity) session.getAttribute("s");
		int userid = u.getUserid();
		this.productServiceImpl.eidtCart(userid, productid);
		
		return "forward:/product/show";
	}
	@RequestMapping(value="empty",method=RequestMethod.GET)
	public String emptyCar(HttpSession session, Model model) {
		userentity u = (userentity) session.getAttribute("s");
		int userid = u.getUserid();
		this.productServiceImpl.enptyCart(userid);
		
		return "cart";
	}
	@RequestMapping(value="search",method=RequestMethod.POST)
	public String searchProduct(Model model,@RequestParam("productname") String productname){
		
		List<ProductEntity> l = this.productServiceImpl.findByname(productname);
		model.addAttribute("list",l);
		return "shop";
		
	}
	@RequestMapping(value="tologin",method=RequestMethod.GET)
	public String tologin(){
		return "login";
	}
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index() {
	
		
		return "index";
	}
	@RequestMapping(value="loginnnn",method=RequestMethod.GET)
	public String loginn() {
	
		
		return "login";
	}
	@RequestMapping(value="addindent",method=RequestMethod.GET)
	public String indent(HttpServletRequest request,@RequestParam("country") String country,
			@RequestParam("firstname") String firstname,@RequestParam("lastname") String lastname,
			@RequestParam("companyname") String companyname,@RequestParam("emailaddress") String emailaddress,
			@RequestParam("phonenum") String phonenum,@RequestParam("address") String address,
			@RequestParam("city") String city,@RequestParam("state") String state,
			@RequestParam("zipcode") String zipcode,HttpSession session,Model model) throws Exception{
		userentity u = (userentity) session.getAttribute("s");
		if(u==null){
			return "login";
		}
		int userid = u.getUserid();
		indentEntity i = this.productServiceImpl.findByUseridi(userid);
		if(i!=null){
			this.productServiceImpl.upentity(country, firstname, lastname, companyname, emailaddress, phonenum, address, city, state, zipcode, userid);
		}else{
			this.productServiceImpl.addentity(country, firstname, lastname, companyname, emailaddress, phonenum, address, city, state, zipcode, userid);
			
		}
		
		
		
		
		
		return "index";
	}
	@RequestMapping(value="indent",method=RequestMethod.GET)
	public String indent(HttpSession session,Model model) throws Exception{
		userentity u = (userentity) session.getAttribute("s");
		
		if(u==null){
			return "login";
		}
		int userid = u.getUserid();
		List<cartEntity> lc = this.productServiceImpl.findByUserId(userid);
		
		
		indentEntity i = this.productServiceImpl.findByUseridi(userid);
		if(i!=null){
			model.addAttribute("i",i);
		}
		model.addAttribute("lc", lc);
		
		return "checkout";
	}
	
	@RequestMapping(value="addproductlist",method=RequestMethod.POST)
	public String addproductlist(@RequestParam("productname") String productname,
			@RequestParam("originalprice") String originalprice,
			@RequestParam("discountprice") String discountprice,
			ProductEntity productEntity,
			@RequestParam("file") CommonsMultipartFile file) throws IllegalStateException, IOException{
		
		long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/"+new Date().getTime()+file.getOriginalFilename();
         
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        long  endTime=System.currentTimeMillis();
//		String userheadportrait = request.getParameter("uhp");
		productEntity.setDiscountprice(discountprice);
		productEntity.setOriginalprice(originalprice);
		productEntity.setProductimg(path);
		productEntity.setProductname(productname);
		
		this.productServiceImpl.addproductlist(productEntity);
		
		
		return "forward:/product/addproductlist";
	}
	
}
