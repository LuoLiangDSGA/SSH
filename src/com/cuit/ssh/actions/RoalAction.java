package com.cuit.ssh.actions;

import net.sf.json.JSONObject;

import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;
import com.cuit.ssh.service.RoalService;
import com.cuit.ssh.service.UserService;
import com.cuit.ssh.util.JsonHelper;
import com.cuit.ssh.util.Result;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RoalAction extends ActionSupport {


	private String result;
	private RoalService roalService;
	private int id;
	private String roleName;
	private String des;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}
	

	public RoalService getRoalService() {
		return roalService;
	}

	public void setRoalService(RoalService roalService) {
		this.roalService = roalService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	

	
	public String Roal() {
		Result<User> Userresult = new Result<User>();
		Userresult.setUrl("Roal/Roal");
		Userresult.setSuccess(true);
		result =  JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	
	public String RoalList() {
		Result<Role> Userresult = new Result<Role>();
		Userresult.setItems(roalService.RoalList());
		Userresult.setSuccess(true);
		result =   JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	public String updata() {
		Result<Role> Userresult = new Result<Role>();
		Role role = new Role();
		role.setId(id);
		role.setDes(des);
		role.setRoleName(roleName);
		try {
			roalService.updata(role);
			Userresult.setSuccess(true);
			Userresult.setMsg("修改成功！");
			
		} catch (Exception e) {
			Userresult.setSuccess(false);	
			Userresult.setMsg("修改失败！");
		}

		result =   JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	
	public String add() {
		Result<Role> Userresult = new Result<Role>();
		Role role = new Role();
		role.setDes(des);
		role.setRoleName(roleName);
		try {
			roalService.add(role);
			Userresult.setSuccess(true);
			Userresult.setMsg("添加成功！");
			
		} catch (Exception e) {
			Userresult.setSuccess(false);	
			Userresult.setMsg("添加失败！");
		}

		result =   JsonHelper.getJsonHelper().format(Userresult);
		return "json";
	}
	public String delete() {
		Result<Role> Userresult = new Result<Role>();

		try {
			roalService.delete(id);
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
