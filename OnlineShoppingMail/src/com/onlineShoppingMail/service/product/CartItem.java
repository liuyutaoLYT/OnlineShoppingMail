package com.onlineShoppingMail.service.product;

import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.service.product.*;

public class CartItem {
	private ProductEntity product;
	private int count;
	private String color;
	private String size;
	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	

}
