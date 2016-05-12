package com.cuit.ssh.service;

import java.util.List;

import com.cuit.ssh.dao.UserDao;
import com.cuit.ssh.entities.User;

public class UserService {

	private UserDao userDao;
    private User user;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserByName(String name) {
		user = userDao.getUSerByName(name);
		return user;
	}

}
