package com.cuit.ssh.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;

public class RoalDao extends BaseDao{

	public List<Role> getRoalAll(){
		String hql = "FROM Role";
		return getSession().createQuery(hql).list();
	}

	public void updata(Role role) {
		 getSession().update(role);
		
	}

	public void add(Role role) {
		 getSession().save(role);
		
	}

	public void delete(Role role) {
	  
		getSession().delete(role);
	}

	public Role getByID(int id) {
		return (Role)getSession().get(Role.class, id);
	}

	
}
