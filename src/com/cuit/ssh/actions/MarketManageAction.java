package com.cuit.ssh.actions;

import java.util.Date;

import net.sf.json.JSONObject;

import com.cuit.ssh.entities.Good;
import com.cuit.ssh.entities.GoodType;
import com.cuit.ssh.service.StockService;
import com.cuit.ssh.util.JsonHelper;
import com.cuit.ssh.util.Result;
import com.opensymphony.xwork2.ActionSupport;

/*
 * 罗亮
 * 对所有商品进行管理的action
 */
public class MarketManageAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private StockService stockservice;
	private String name;
	private String introduce;
	private Integer price;
	private String goodtype;
	private Integer number;
	private String id;
	private Integer remainnumber;
	private String state;
	private Good good = new Good();

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getRemainnumber() {
		return remainnumber;
	}

	public void setRemainnumber(Integer remainnumber) {
		this.remainnumber = remainnumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private GoodType type;

	public String getGoodtype() {
		return goodtype;
	}

	public void setGoodtype(String goodtype) {
		this.goodtype = goodtype;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setStockservice(StockService stockService) {
		this.stockservice = stockService;
	}

	// 执行添加商品的方法
	public String addGoods() {
		type = stockservice.queryGoodType(goodtype);
		
		good.setName(name);
		good.setIntroduce(introduce);
		good.setPrice(price);
		good.setGoodtype(type);
		good.setNumber(number);
		good.setRemainnumber(number);
		good.setCreateTime(new Date());
		good.setState("销售中");

		Result<Good> addResult = new Result<Good>();

		if (stockservice.saveGood(good)) {
			addResult.setMsg("添加成功！");
			addResult.setSuccess(true);
		} else {
			addResult.setMsg("添加失败！");
			addResult.setSuccess(false);
		}

		result = JsonHelper.getJsonHelper().format(addResult);

		return "json";
	}

	// 执行更新商品的方法
	public String updateGood() {
		type = stockservice.queryGoodType(goodtype);

		good.setId(Integer.valueOf(id));
		good.setName(name);
		good.setIntroduce(introduce);
		good.setPrice(price);
		good.setGoodtype(type);
		good.setNumber(number);
		good.setRemainnumber(remainnumber);
		good.setState(state);

		Result<Good> updateResult = new Result<Good>();

		if (stockservice.updateGood(good)) {
			updateResult.setMsg("更新成功！");
			updateResult.setItems(stockservice.queryGoodList());
			updateResult.setSuccess(true);
		} else {
			updateResult.setMsg("更新失败！");
			updateResult.setSuccess(false);
		}

		result = JsonHelper.getJsonHelper().format(updateResult);

		return "json";
	}

	// 打开添加商品的页面方法
	public String openaddPage() {
		Result<GoodType> typelist = new Result<GoodType>();

		typelist.setSuccess(true);
		typelist.setUrl("MarketManage/Stock");
		typelist.setItems(stockservice.queryTypeList());

		result = JsonHelper.getJsonHelper().format(typelist);

		return "json";
	}

	// 加载商品管理列表的方法
	public String Manage() {

		Result<Good> Goodlist = new Result<Good>();
		Goodlist.setUrl("MarketManage/MarketManage");
		Goodlist.setSuccess(true);
		Goodlist.setItems(stockservice.queryGoodList());

		result = JsonHelper.getJsonHelper().format(Goodlist);

		return "json";
	}

	public String findGood() {
		Result<Good> Good = new Result<Good>();

		Good.setItem(stockservice.queryGood(id));
		Good.setType(stockservice.queryTypeList());

		result = JsonHelper.getJsonHelper().format(Good);

		return "json";
	}

	public String delGood() {
		Result<Good> Good = new Result<Good>();

		if (stockservice.delGood(stockservice.queryGood(id))) {
			Good.setItems(stockservice.queryGoodList());
			Good.setSuccess(true);
		} else {
			Good.setSuccess(false);
		}
		result = JsonHelper.getJsonHelper().format(Good);
		return "json";
	}
}
