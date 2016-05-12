package com.cuit.ssh.actions;

import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JSONObject;

import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;
import com.cuit.ssh.service.UserMangerService;
import com.cuit.ssh.service.UserService;
import com.cuit.ssh.util.JsonHelper;
import com.cuit.ssh.util.Result;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserMangerAction extends ActionSupport {


	private String result;
	private UserMangerService userMangerService ;
	private String name;
	private String password;
	private int pay;
	private int  role;
	private int id;
	private int currentPage ;

	private int pagecount ;
	private int limit;

	

	public int getLimit() {
		return limit;
	}





	public void setLimit(int limit) {
		this.limit = limit;
	}





	public int getCurrentPage() {
		return currentPage;
	}





	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}





	public int getPagecount() {
		return pagecount;
	}





	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}





	public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	public int getPay() {
		return pay;
	}





	public void setPay(int pay) {
		this.pay = pay;
	}





	public int getRole() {
		return role;
	}





	public void setRole(int role) {
		this.role = role;
	}





	public UserMangerService getUserMangerService() {
		return userMangerService;
	}





	public void setUserMangerService(UserMangerService userMangerService) {
		this.userMangerService = userMangerService;
	}





	public String getResult() {
		return result;
	}





	public void setResult(String result) {
		this.result = result;
	}





	public String Index() {
		Result<User> Userresult = new Result<User>();
		Userresult.setUrl("UserManger/UserManger");
		Userresult.setSuccess(true);
		result =  JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	
	public String UserList() {
		Result<User> Userresult = new Result<User>();
         
		try {
			Userresult = userMangerService.UserList(currentPage,limit);
			
			Userresult.setSuccess(true);
			
		} catch (Exception e) {
			// TODO: handle exception
			Userresult.setSuccess(false);
		}
		
		result =  JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	
	public String add() {
		Result<User> Userresult = new Result<User>();
         
		try {
			User user = new User();
			
			user.setName(name);
			
			user.setPassword(password);
			user.setPay(pay);
			
			user.setCreatetime(new Date());
			userMangerService.add(user,role);
			Userresult.setSuccess(true);
			Userresult.setMsg("添加成功！");
			
		} catch (Exception e) {
			// TODO: handle exception
			Userresult.setSuccess(false);
			Userresult.setMsg("添加失败！");
		}
		
		result =  JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	public String updata() {
		Result<User> Userresult = new Result<User>();
         
		try {
			User user = new User();
			
			user.setName(name);
			user.setId(id);
			user.setPassword(password);
			user.setPay(pay);
			userMangerService.updata(user,role);
			Userresult.setSuccess(true);
			Userresult.setMsg("修改成功！");
			
		} catch (Exception e) {
			// TODO: handle exception
			Userresult.setSuccess(false);
			Userresult.setMsg("修改失败！");
		}
		
		result =  JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	  public String delete() {
		Result<Role> Userresult = new Result<Role>();

		try {
			userMangerService.delete(id);
			Userresult.setSuccess(true);
			Userresult.setMsg("删除成功！");
			
		} catch (Exception e) {
			Userresult.setSuccess(false);	
			Userresult.setMsg("删除失败！");
		}

		result =   JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	
}
