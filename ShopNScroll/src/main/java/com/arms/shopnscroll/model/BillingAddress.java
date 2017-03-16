package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BillingAddress 
{
	@Id
	private int userId;
	
	private String bPrefix;
	private String bStreet;
	private String bCity;
	private String bState;
	private String bCountry;
	private int bPIN;
	private String bLandmark;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	
	
}
