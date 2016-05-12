package com.cuit.ssh.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class IncomAnalysis {

	private String label;
	private List<Integer> data;
	private Integer first = 0;
	private Integer Two = 0;
	private Integer Three = 0;
	private Integer Four = 0;
	

	
	
	public String getLabel() {
		return label;
	}




	public void setLabel(String label) {
		this.label = label;
	}




	public List<Integer> getData() {
		return data;
	}




	public void setData(List<Integer> data) {
		this.data = data;
	}




	public Integer getFirst() {
		return first;
	}




	public void setFirst(Integer first) {
		this.first = first;
	}




	public Integer getTwo() {
		return Two;
	}




	public void setTwo(Integer two) {
		Two = two;
	}




	public Integer getThree() {
		return Three;
	}




	public void setThree(Integer three) {
		Three = three;
	}




	public Integer getFour() {
		return Four;
	}




	public void setFour(Integer four) {
		Four = four;
	}




	public List<Integer> sort(){
		data = new ArrayList<Integer>();
		data.add(first);
		data.add(Two);
		data.add(Three);
		data.add(Four);
		return data;
	}
	

}
