package com.cuit.ssh.util;

import java.util.ArrayList;

public class GoodTypeUntil {

	public static ArrayList<String> goodTypeName = null;
	public static ArrayList<String> goodTypeState = null;
	public static ArrayList<String> goodTypeColor = null;
	public static GoodTypeUntil goodTypeUntil= null;
	
	public static GoodTypeUntil getGoodTypeUntil(){
		 
		if(goodTypeUntil == null){
			goodTypeUntil = new GoodTypeUntil();
			goodTypeName = new ArrayList<String>();
			goodTypeState = new ArrayList<String>();
			goodTypeColor = new ArrayList<String>();
			goodTypeName.add("食品类");
			goodTypeName.add("生活用品");
			goodTypeName.add("书籍");
			goodTypeName.add("学习用品");
			goodTypeName.add("家电类");
			
			goodTypeState.add("销售中");
			goodTypeState.add("下架");
			goodTypeState.add("售空");
			
			goodTypeColor.add("#68BC31");
			goodTypeColor.add("#2091CF");
			goodTypeColor.add("#AF4E96");
			goodTypeColor.add("#DA5430");
			goodTypeColor.add("#FEE074");
			goodTypeColor.add("#FEE054");
			goodTypeColor.add("#FEE014");

		}
		return goodTypeUntil;
	}
	
	public ArrayList<String> getgoodTypeName(){
		
		
		return goodTypeName;
	}
	
	public ArrayList<String> goodTypeState(){
		
		
		return goodTypeState;
	}
	
	public ArrayList<String> goodTypeColor(){
		
		
		return goodTypeColor;
	}
	
	

}
