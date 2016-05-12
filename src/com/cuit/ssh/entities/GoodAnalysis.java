package com.cuit.ssh.entities;

import java.util.Date;

public class GoodAnalysis {

	private String label;
	private int data;
	private String color;
	private double realdata;

	public double getRealdata() {
		return realdata;
	}

	public void setRealdata(double realdata) {
		this.realdata = realdata;
	}

	public GoodAnalysis() {
		this.data = 0;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setdata1() {

		data++;
	}

}
