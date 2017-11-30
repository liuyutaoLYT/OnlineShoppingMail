package com.onlineShoppingMail.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_user")
public class userentity {
	private int userid;
	private String userName;
	private String userEmail;
	private String userheadportrait;
	private String password;
	@Id
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserheadportrait() {
		return userheadportrait;
	}
	public void setUserheadportrait(String userheadportrait) {
		this.userheadportrait = userheadportrait;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
