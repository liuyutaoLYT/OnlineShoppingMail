package com.onlineShoppingMail.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class ProductEntity {
	private int productid;
	private String productname;
	private String originalprice;
	private String productimg;
	private String discountprice;
	@Id
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getOriginalprice() {
		return originalprice;
	}
	public void setOriginalprice(String originalprice) {
		this.originalprice = originalprice;
	}
	public String getProductimg() {
		return productimg;
	}
	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	public String getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(String discountprice) {
		this.discountprice = discountprice;
	}
	
}
