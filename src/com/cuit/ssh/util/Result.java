package com.cuit.ssh.util;

import java.util.List;

import com.cuit.ssh.entities.GoodType;

public class Result <T>{
	private List<T> items;
	private String msg;
	private Boolean success;
	private T item;
	private String url;
	private List<GoodType> type;
	private int currentpage;
	private Long pagecont;
	private Long linestotal;
	
	
	public Long getLinestotal() {
		return linestotal;
	}
	public void setLinestotal(Long linestotal) {
		this.linestotal = linestotal;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public Long getPagecont() {
		return pagecont;
	}
	public void setPagecont(Long pagecont) {
		this.pagecont = pagecont;
	}
	public List<GoodType> getType() {
		return type;
	}
	public void setType(List<GoodType> type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public T getItem() {
		return item;
	}
	public void setItem(T item) {
		this.item = item;
	}
	public List<T> getItems() {
		return items;
	}
	public void setItems(List<T> items) {
		this.items = items;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Boolean getSuccess() {
		return success;
	}
	public void setSuccess(Boolean success) {
		this.success = success;
	}
	
	
	
	
}
