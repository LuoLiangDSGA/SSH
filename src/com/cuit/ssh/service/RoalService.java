package com.cuit.ssh.service;

import java.util.List;

import javassist.bytecode.analysis.Analyzer;

import com.cuit.ssh.dao.AnalysisDao;
import com.cuit.ssh.dao.RoalDao;
import com.cuit.ssh.dao.UserDao;
import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;

public class RoalService {

	private  RoalDao roalDao;





	public RoalDao getRoalDao() {
		return roalDao;
	}





	public void setRoalDao(RoalDao roalDao) {
		this.roalDao = roalDao;
	}





	public List<Role> RoalList() {
	
		return roalDao.getRoalAll();
	}





	public void updata(Role role) {
		
		roalDao.updata(role);
	}





	public void add(Role role) {
		roalDao.add(role);
		
	}





	public void delete(int id) {
		Role role = roalDao.getByID(id);
		roalDao.delete(role);
		
	}

}
