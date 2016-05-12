package com.cuit.ssh.util;

import java.util.Date;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

// 构造json 工具
public class JsonHelper  {

	private  static JsonConfig config ;
	private static JsonHelper jsonHelper;
	
	public static JsonHelper getJsonHelper(){
		if(jsonHelper == null){
			jsonHelper = new JsonHelper();
		}
		if(config == null){

			config = new JsonConfig();
			config.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
			config.setExcludes(new String[] { "handler", "hibernateLazyInitializer" });
			config.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor());  
		}
		
		return jsonHelper;
	}
	public  String format(Object object){
		return JSONObject.fromObject(object,config).toString();
	}
}
