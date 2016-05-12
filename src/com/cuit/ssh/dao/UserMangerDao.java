package com.cuit.ssh.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.Role;
import com.cuit.ssh.entities.User;

public class UserMangerDao extends BaseDao {

	public void updata(User user) {
		getSession().update(user);

	}

	public void add(User user) {
		getSession().save(user);

	}

	public void delete(User user) {

		getSession().delete(user);
	}

	public Role getByID(int id) {
		return (Role) getSession().get(Role.class, id);
	}

	public List<User> getUserAll(int firstresult, int maxresult) {
		return getSession().createQuery("FROM User")
				.setFirstResult(firstresult).setMaxResults(maxresult).list();
	}

	public User getByIDUser(int id) {
		return (User) getSession().get(User.class, id);
	}

	public Long count() {

		return (Long)getSession().createQuery("SELECT COUNT(*) FROM User").uniqueResult();
	}

}
