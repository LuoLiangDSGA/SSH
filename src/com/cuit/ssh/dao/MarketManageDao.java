package com.cuit.ssh.dao;

import java.util.List;

public class MarketManageDao extends BaseDao {

	// 根据hql进行查询
	@SuppressWarnings("rawtypes")
	public List querybyHQL(String hql) {
		List list = getSession().createQuery(hql).list();

		return list;
	}

	// 增加
	public void save(Object obj) {
		getSession().save(obj);
	}

	// 删除
	public void delete(Object obj) {
		getSession().delete(obj);
	}

	// 更新
	public void update(Object obj) {
		getSession().update(obj);
	}
}
