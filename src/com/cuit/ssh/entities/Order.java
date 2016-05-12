package com.cuit.ssh.entities;

import java.util.Date;

public class Order {

	private Integer id;
	private Integer Allpay;
	private String goodtype;
	private Integer jidu;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAllpay() {
		return Allpay;
	}
	public void setAllpay(Integer allpay) {
		Allpay = allpay;
	}
	public String getGoodtype() {
		return goodtype;
	}
	public void setGoodtype(String goodtype) {
		this.goodtype = goodtype;
	}
	public Integer getJidu() {
		return jidu;
	}
	public void setJidu(Integer jidu) {
		this.jidu = jidu;
	}
	
	
}
