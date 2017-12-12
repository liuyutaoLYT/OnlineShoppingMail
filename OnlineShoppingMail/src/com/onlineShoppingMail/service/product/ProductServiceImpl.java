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
import com.onlineShoppingMail.entity.Page;
import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.cartEntity;
import com.onlineShoppingMail.entity.indentEntity;
import com.onlineShoppingMail.entity.userentity;

@Service
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	
	@Transactional(readOnly=true)
	public List<ProductEntity> findAll(){
		List<ProductEntity> l = this.productDaoImpl.findAll();
		
		return l;
		
	}
	public List<userentity> findAlluser(){
		List<userentity> l = this.productDaoImpl.findAlluser();
		
		return l;
		
	}
	public List<cartEntity> findAllcart(){
		List<cartEntity> l = this.productDaoImpl.findAllCarEntity();
		
		return l;
		
	}
	public List<cartEntity> findByUserId( int userid){
		List<cartEntity> lc = (List<cartEntity>) this.productDaoImpl.findByUserId(userid);
		return lc;
	}
	public List<ProductEntity> findByname(String productname){
		List<ProductEntity> l = this.productDaoImpl.findByName(productname);
		return l;
	}
	public List<userentity> findByusername(String username){
		List<userentity> l = this.productDaoImpl.findByusername(username);
		return l;
	}
	public ProductEntity findByid(int productid){
		ProductEntity l = this.productDaoImpl.findById(productid);
		return l;
	}
	public cartEntity findBycartid(int cartid){
		cartEntity l = this.productDaoImpl.findBycartId(cartid);
		return l;
	}
	public userentity findByuserid(int userid){
		userentity l = this.productDaoImpl.findByUserid1(userid);
		return l;
	}
	@Transactional(readOnly=true)
	public void addCart(int productid,int userid) throws Exception {
		ProductEntity pe = this.productDaoImpl.findById(productid);
		cartEntity c = this.productDaoImpl.findByTwoId(productid, userid);
		
		if(c!=null){
			
			c.setProductcount(c.getProductcount()+1);
			this.productDaoImpl.update(c);
		}else{
			cartEntity ce = new cartEntity();
			
			ce.setProductid(productid);
			ce.setProductcount(1);
			ce.setProductimg(pe.getProductimg());
			ce.setProductprice(pe.getDiscountprice());
			ce.setUserid(userid);
			ce.setProductname(pe.getProductname());
			this.productDaoImpl.save(ce);
			
			
		}
		

	}
	public void eidtCart(int userid, int productid) {
		cartEntity c = this.productDaoImpl.findByTwoId(productid, userid);
		if(c.getProductcount()>1){
			c.setProductcount(c.getProductcount()-1);
			this.productDaoImpl.update(c);
		}else{
			this.productDaoImpl.delete(c);
		}
	}
	public void enptyCart(int userid) {
		
		List<cartEntity> lcc = this.productDaoImpl.findByUserId(userid);
		this.productDaoImpl.empty(lcc);
		
	}
	public void deleteproduct(ProductEntity p) {
		
		this.productDaoImpl.deleteproduct(p);
		
	}
	public void deleted(cartEntity p) {
		
		this.productDaoImpl.deleted(p);
		
	}
	public void deleteu(userentity p) {
		
		this.productDaoImpl.deleteu(p);
		
	}

	public void emptyu(int id) {
		userentity u =this.productDaoImpl.findByUserid1(id);
		this.productDaoImpl.deleteu(u);
		
	}
	public void emptypro() {
		
		List<ProductEntity> lcc = this.productDaoImpl.findAll();
		this.productDaoImpl.emptypro(lcc);
		
	}
	public indentEntity findByUseridi(int userid){
		indentEntity en = this.productDaoImpl.findByUserIdi(userid);
		return en;
	}
	public void addentity( String country,
			 String firstname, String lastname,
			 String companyname, String emailaddress,
			 String phonenum, String address,
			 String city, String state,
			 String zipcode ,int userid) throws Exception{
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
		iden.setUserid(userid);
		this.productDaoImpl.savei(iden);
	}
	public void upentity( String country,
			 String firstname, String lastname,
			 String companyname, String emailaddress,
			 String phonenum, String address,
			 String city, String state,
			 String zipcode ,int userid) throws Exception{
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
		iden.setUserid(userid);
		this.productDaoImpl.updatei(iden);
	}
	public void updateproduct(String productname,String originalprice,String discountprice,int productid,String productimg){
		ProductEntity p = new ProductEntity();
		p.setDiscountprice(discountprice);
		p.setOriginalprice(originalprice);
		p.setProductimg(productimg);
		p.setProductname(productname);
		p.setProductid(productid);
		this.productDaoImpl.updateproduct(p);
	}
	public Page<ProductEntity> page(String pageNum1){
		String pageNum=pageNum1;
		int num=0;
		if(pageNum==null || pageNum.equals("")){
			num=1;
		}else{
			num=Integer.parseInt(pageNum);
		}
		//2、根据页码查询相关数据
		
		int count=this.productDaoImpl.findCountByPage();
		List<ProductEntity> list=this.productDaoImpl.findByPage(num, 10);
		Page<ProductEntity> p=new Page<ProductEntity>(num, 10);
		p.setList(list);
		p.setTotalCount(count);
		return p;
	}
	@Transactional(readOnly=true)
	public void addproductlist(ProductEntity productEntity){
		try {
			this.productDaoImpl.addproductlist(productEntity);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
