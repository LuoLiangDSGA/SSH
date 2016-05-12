package com.cuit.ssh.entities;

import java.util.Date;

public class Good {


	private Integer id;
	private String name;
	private String introduce;   // 介绍
	private Integer price;          //价格
	private Date createTime  ;   //上架时间
	private Date endtime  ;   //下架时间
	
	private GoodType goodtype;  //商品分类
	private Integer number;    //总数
	
	private String state;  //商品分类
	private Integer remainnumber;    //总数
	
	public Integer getRemainnumber() {
		return remainnumber;
	}
	public void setRemainnumber(Integer remainnumber) {
		this.remainnumber = remainnumber;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public GoodType getGoodtype() {
		return goodtype;
	}
	public void setGoodtype(GoodType goodtype) {
		this.goodtype = goodtype;
	}

	
}
