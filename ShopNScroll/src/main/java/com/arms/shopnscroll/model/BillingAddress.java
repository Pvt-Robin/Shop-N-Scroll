package com.arms.shopnscroll.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@Entity
public class BillingAddress implements Serializable
{	
	private static final long serialVersionUID = 1L;

	@Id
	@Expose
	private int billId;
	
	@Expose
	int userId;
	
	@Expose
	private String bName;
	
	@Expose
	private String bPrefix;
	
	@Expose
	private String bLandmark;
	
	@Expose
	private String bStreet;
	
	@Expose
	private String bCity;
	
	@Expose
	private String bState;
	
	@Expose
	private String bCountry;
	
	@Expose
	private int bPIN;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;
	

	public int getBillId() {
		return billId;
	}
	public void setBillId(int billId) {
		this.billId = billId;
	}
	public String getbPrefix() {
		return bPrefix;
	}
	public void setbPrefix(String bPrefix) {
		this.bPrefix = bPrefix;
	}
	public String getbStreet() {
		return bStreet;
	}
	public void setbStreet(String bStreet) {
		this.bStreet = bStreet;
	}
	public String getbCity() {
		return bCity;
	}
	public void setbCity(String bCity) {
		this.bCity = bCity;
	}
	public String getbState() {
		return bState;
	}
	public void setbState(String bState) {
		this.bState = bState;
	}
	public String getbCountry() {
		return bCountry;
	}
	public void setbCountry(String bCountry) {
		this.bCountry = bCountry;
	}
	public int getbPIN() {
		return bPIN;
	}
	public void setbPIN(int bPIN) {
		this.bPIN = bPIN;
	}
	public String getbLandmark() {
		return bLandmark;
	}
	public void setbLandmark(String bLandmark) {
		this.bLandmark = bLandmark;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
