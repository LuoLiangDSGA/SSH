package com.cuit.ssh.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.cuit.ssh.entities.User;

public class UserDao extends BaseDao{

	public List<User> getAll(){
		String hql = "FROM Department";
		return getSession().createQuery(hql).list();
	}

	public User getUSerByName(String name) {
//		String hql = "FROM User e WHERE e.name = ?";
//		Query query = getSession().createQuery(hql).setString(0, name);
//		User user = (User) query.uniqueResult();
//		//System.out.println(employee.getDepartment().getClass().getName());
		
		  Criteria criteria =getSession().createCriteria(User.class);
		  criteria.add(Restrictions.eq("name",name));//eq是等于，gt是大于，lt是小于,or是或
		
		return (User)criteria.uniqueResult();
	}
	
}
