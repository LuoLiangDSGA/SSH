package com.cuit.ssh.actions;

import java.io.File;

import net.sf.json.JSONObject;

import com.cuit.ssh.entities.GoodAnalysis;
import com.cuit.ssh.entities.IncomAnalysis;
import com.cuit.ssh.entities.Order;
import com.cuit.ssh.service.AnalysisService;
import com.cuit.ssh.util.JsonHelper;
import com.cuit.ssh.util.Result;
import com.opensymphony.xwork2.ActionSupport;

public class AnalysisAction extends ActionSupport {

	private String result;
	private AnalysisService analysisService;

	private String cheak;
	private File image;
	private String imageFileName;
	
	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getCheak() {
		return cheak;
	}

	public void setCheak(String cheak) {
		this.cheak = cheak;
	}

	public void setAnalysisService(AnalysisService analysisService) {
		this.analysisService = analysisService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	public String Cargo() {
		Result<Order> Userresult = new Result<Order>();
		Userresult.setUrl("Cargoanalysis/Cargoanalysis");
		Userresult.setSuccess(true);
		result = JSONObject.fromObject(Userresult).toString();
		return "json";

	}
	public String GoodList() {
		Result<GoodAnalysis> Userresult = analysisService.GoodAnalysis(cheak);
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";

	}

	public String Income() {
		Result<Order> Userresult = new Result<Order>();
		Userresult.setUrl("Cargoanalysis/Incomeanalysis");
		Userresult.setSuccess(true);
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";

	}

	public String IncomeList() {

		Result<IncomAnalysis> Userresult = new Result<IncomAnalysis>();
		Userresult.setSuccess(true);
		Userresult.setItems(analysisService.IncomeList());
		result = JsonHelper.getJsonHelper().format(Userresult);
		return "json";

	}



}
