package com.cuit.ssh.service;

import java.util.List;

import com.cuit.ssh.dao.MarketManageDao;
import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.GoodType;

public class StockService {
	private MarketManageDao marketDao;

	public MarketManageDao getMarketDao() {
		return marketDao;
	}

	public void setMarketDao(MarketManageDao marketDao) {
		this.marketDao = marketDao;
	}

	// 查询商品类别
	@SuppressWarnings("unchecked")
	public List<GoodType> queryTypeList() {
		List<GoodType> list = marketDao.querybyHQL("from GoodType");

		return list;
	}

	@SuppressWarnings("unchecked")
	// 查找商品类型方法
	public GoodType queryGoodType(String str) {
		String sql = "from GoodType g where g.goodTypeName = " + "'" + str
				+ "'";

		List<GoodType> list = marketDao.querybyHQL(sql);

		if (list.size() == 0) {
			return null; // 未找到这个类型
		}

		return list.get(0);
	}

	// 增加商品
	public boolean saveGood(Good good) {
		boolean bool = true;

		try {
			marketDao.save(good);
		} catch (Exception e) {
			bool = false;
		}

		return bool;
	}

	// 更新商品

	public boolean updateGood(Good good) {
		boolean bool = true;

		try {
			marketDao.update(good);
		} catch (Exception e) {
			bool = false;
		}

		return bool;
	}

	// 删除商品
	public boolean delGood(Good good) {
		boolean bool = true;

		try {
			marketDao.delete(good);
		} catch (Exception e) {
			bool = false;
		}

		return bool;
	}

	// 查询商品列表
	@SuppressWarnings("unchecked")
	public List<Good> queryGoodList() {
		String hql = "from Good";

		List<Good> list = marketDao.querybyHQL(hql);

		return list;
	}

	// 查找商品方法，参数为商品的id
	@SuppressWarnings("unchecked")
	public Good queryGood(String id) {
		String sql = "from Good g where g.id = " + "'" + id + "'";

		List<Good> list = marketDao.querybyHQL(sql);

		if (list.size() == 0) {
			return null; // 未找到这个类型
		}

		return list.get(0);
	}
}
