package com.cuit.ssh.service;

import java.util.List;

import javassist.bytecode.analysis.Analyzer;

import com.cuit.ssh.dao.AnalysisDao;
import com.cuit.ssh.dao.UserDao;
import com.cuit.ssh.dao.UserMangerDao;
import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;
import com.cuit.ssh.util.Result;

public class UserMangerService {

	private  UserMangerDao userMangerDao ;

	public UserMangerDao getUserMangerDao() {
		return userMangerDao;
	}

	public void setUserMangerDao(UserMangerDao userMangerDao) {
		this.userMangerDao = userMangerDao;
	}

	public Result<User> UserList(int currentpage, int limit) {
		Result<User> result = new Result<User>();
		int firstResult = (currentpage - 1) * limit;
		int maxResults = limit;
		List<User> list= userMangerDao.getUserAll(firstResult,maxResults);
		result.setItems(list);
		result.setLinestotal(userMangerDao.count());
		result.setCurrentpage(currentpage);
		result.setPagecont(result.getLinestotal() % limit == 0 ? result.getLinestotal() / limit: result.getLinestotal() / limit+1);
		
		return result;
	}

	public void add(User user, int role) {
		
		Role role2 = userMangerDao.getByID(role);
		user.setRole(role2);
		
		userMangerDao.add(user);
		
	}

	public void updata(User user, int role) {
		Role role2 = userMangerDao.getByID(role);
		
		user.setRole(role2);
	
		userMangerDao.updata(user);
		
	}

	public void delete(int id) {
		User user = userMangerDao.getByIDUser(id);
		userMangerDao.delete(user);
	}


	

}
