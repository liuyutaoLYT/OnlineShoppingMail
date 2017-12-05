package com.onlineShoppingMail.service.product;

import java.util.HashMap;
import java.util.Map;

import com.onlineShoppingMail.*;
import com.onlineShoppingMail.entity.ProductEntity;

public class Cart {
	
	public Map<Integer, CartItem> container=new HashMap<Integer, CartItem>();

	public void addCart(ProductEntity pro){
		if(container.containsKey(pro.getProductid())){
			CartItem ci=container.get(pro.getProductid());
			ci.setCount(ci.getCount()+1);
		}else{
			CartItem ci=new CartItem();
			ci.setProduct(pro);
			ci.setCount(1);
			container.put(pro.getProductid(), ci);
		}
	}
	public void deleteCart (ProductEntity p){
		CartItem c = container.get(p.getProductid());
		if(c.getCount()>1){
			c.setCount(c.getCount()-1);
		}else{
			container.remove(p.getProductid());
		}
		
	}
	public void empty (){
		container.clear();
		
	}
		
}

