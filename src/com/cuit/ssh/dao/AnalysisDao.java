package com.cuit.ssh.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.User;

public class AnalysisDao extends BaseDao {

	public List<Good> getGoodAll() {
		String hql = "FROM Good";
		return getSession().createQuery(hql).list();
	}

	public List<Order> getIncomeAll() {
		String hql = "FROM Order";
		return getSession().createQuery(hql).list();
	}

	public List<Good> GoodListByPage(int firstResult, int maxResults) {

		return getSession().createQuery("FROM Good")
				.setFirstResult(firstResult).setMaxResults(maxResults).list();
	}

	public long getGoodCount() {
		//Criteria criteria = getSession().createCriteria(Good.class);
		return  (long)getSession().createQuery("select count(*) from Good").uniqueResult();
	}
	
	public int getIncomCount() {
		int saadfv = (Integer)getSession().createQuery("SELECT COUNT(*) FROM Order")
		.uniqueResult();
		return saadfv;
	}

}
