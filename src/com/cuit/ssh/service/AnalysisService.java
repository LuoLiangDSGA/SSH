package com.cuit.ssh.service;

import java.util.ArrayList;
import java.util.List;

import javassist.bytecode.analysis.Analyzer;

import com.cuit.ssh.dao.AnalysisDao;
import com.cuit.ssh.dao.UserDao;
import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.GoodAnalysis;
import com.cuit.ssh.entities.IncomAnalysis;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.entities.User;
import com.cuit.ssh.util.GoodTypeUntil;
import com.cuit.ssh.util.Result;

public class AnalysisService {

	private AnalysisDao analysisDao;

	public AnalysisDao getAnalysisDao() {
		return analysisDao;
	}

	public void setAnalysisDao(AnalysisDao analysisDao) {
		this.analysisDao = analysisDao;
	}

	public List<Good> GoodList() {

		return analysisDao.getGoodAll();
	}

	public List<IncomAnalysis> IncomeList() {

		List<IncomAnalysis> analysis = new ArrayList<IncomAnalysis>();
		List<Order> orders = analysisDao.getIncomeAll();

		for (int i = 0; i < GoodTypeUntil.getGoodTypeUntil().getgoodTypeName()
				.size(); i++) {
			IncomAnalysis incomAnalysis = new IncomAnalysis();
			incomAnalysis.setLabel(GoodTypeUntil.getGoodTypeUntil()
					.getgoodTypeName().get(i));
			analysis.add(incomAnalysis);
			incomAnalysis = null;
		}

		for (Order order : orders) {

			switch (order.getJidu()) {
			case 1:
				for (int i = 0; i < analysis.size(); i++) {
					if (order.getGoodtype().equals(analysis.get(i).getLabel())) {
						analysis.get(i).setFirst(order.getAllpay());
					}
				}

				break;
			case 2:
				for (int i = 0; i < analysis.size(); i++) {
					if (order.getGoodtype().equals(analysis.get(i).getLabel())) {
						analysis.get(i).setTwo(order.getAllpay());
					}
				}

				break;
			case 3:
				for (int i = 0; i < analysis.size(); i++) {
					if (order.getGoodtype().equals(analysis.get(i).getLabel())) {
						analysis.get(i).setThree(order.getAllpay());
					}
				}

				break;
			case 4:
				for (int i = 0; i < analysis.size(); i++) {
					if (order.getGoodtype().equals(analysis.get(i).getLabel())) {
						analysis.get(i).setFour(order.getAllpay());
					}
				}

				break;

			default:
				break;
			}
		}
		for(IncomAnalysis analysis2:analysis){
			analysis2.sort();
		}
		return analysis;
	}

	public Result<GoodAnalysis> GoodAnalysis(String type) {
		Result<GoodAnalysis> result = new Result<GoodAnalysis>();
		List<GoodAnalysis> analysis = new ArrayList<GoodAnalysis>();
		// 通过销售状态分析
		List<Good> goods = analysisDao.getGoodAll();

		if (type.equals("商品类别")) {

			for (int i = 0; i < GoodTypeUntil.getGoodTypeUntil()
					.getgoodTypeName().size(); i++) {

				GoodAnalysis goodAnalysis = new GoodAnalysis();
				goodAnalysis.setLabel(GoodTypeUntil.getGoodTypeUntil()
						.getgoodTypeName().get(i));
				goodAnalysis.setColor(GoodTypeUntil.goodTypeUntil
						.goodTypeColor().get(i));
				analysis.add(goodAnalysis);
				goodAnalysis = null;
			}

			for (Good good : goods) {

				for (int i = 0; i < analysis.size(); i++) {
					if (good.getGoodtype().getGoodTypeName()
							.equals(analysis.get(i).getLabel())) {
						analysis.get(i).setdata1();
						break;
					}

				}
			}

		} else if (type.equals("商品销售状态")) {
			for (int i = 0; i < GoodTypeUntil.getGoodTypeUntil()
					.goodTypeState().size(); i++) {

				GoodAnalysis goodAnalysis = new GoodAnalysis();
				goodAnalysis.setLabel(GoodTypeUntil.getGoodTypeUntil()
						.goodTypeState().get(i));
				goodAnalysis.setColor(GoodTypeUntil.goodTypeUntil
						.goodTypeColor().get(i));
				analysis.add(goodAnalysis);
				goodAnalysis = null;

			}

			for (Good good : goods) {

				for (int i = 0; i < analysis.size(); i++) {

					if (good.getState().equals(analysis.get(i).getLabel())) {
						analysis.get(i).setdata1();
						break;
					}

				}

			}

		}

		for (GoodAnalysis a : analysis) {
			a.setRealdata((float) a.getData() / goods.size());
		}

		result.setItems(analysis);
		result.setSuccess(true);
		return result;
	}

}
