package com.cuit.ssh.actions;

import net.sf.json.JSONObject;

import com.cuit.ssh.entities.User;
import com.cuit.ssh.service.UserService;
import com.cuit.ssh.util.JsonHelper;
import com.cuit.ssh.util.Result;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private User user;
	private String name;
	private String passwored;
	private UserService userService;
	private String result;
	

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswored() {
		return passwored;
	}

	public void setPasswored(String passwored) {
		this.passwored = passwored;
	}

	public String Login() {
		
		Result<User> Userresult = new Result<User>();
	
		try {
			user = userService.getUserByName(name);
			if(user.getPassword().equals(passwored)){
				   
				Userresult.setItem(user);
				Userresult.setSuccess(true);
				Userresult.setMsg("登陆成功");
				ActionContext.getContext().getSession().put("User", user);
				
			}else{
				Userresult.setSuccess(false);
				Userresult.setMsg("密码错误！");
				
			}
			
		} catch (Exception e) {
			Userresult.setSuccess(false);
			Userresult.setMsg("登录失败！");
		}
		
		
		result =  JSONObject.fromObject(Userresult).toString();
		return "json";
	
	}

	public String Index() {
		Result<User> Userresult = new Result<User>();
		Userresult.setUrl("user/user");
		Userresult.setSuccess(true);
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	public String Index1() {

		return "IndexSuccess";
	}
	/**
	 * 获取当前用户
	 * @return
	 */
	public String getcurrentuser(){
		Result<User> Userresult = new Result<User>();
		Userresult.setSuccess(true);
		Userresult.setItem((User)ActionContext.getContext().getSession().get("User"));
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}

	public String outlogin(){
		Result<User> Userresult = new Result<User>();
		ActionContext.getContext().getSession().remove("User");
		Userresult.setSuccess(true);
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	

}
