package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ShippingAddress 
{
	@Id
	private int userId;
	
	private String sPrefix;
	private String sStreet;
	private String sCity;
	private String sState;
	private String sCountry;
	private int sPIN;
	private String sLandmark;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getsPrefix() {
		return sPrefix;
	}
	public void setsPrefix(String sPrefix) {
		this.sPrefix = sPrefix;
	}
	public String getsStreet() {
		return sStreet;
	}
	public void setsStreet(String sStreet) {
		this.sStreet = sStreet;
	}
	public String getsCity() {
		return sCity;
	}
	public void setsCity(String sCity) {
		this.sCity = sCity;
	}
	public String getsState() {
		return sState;
	}
	public void setsState(String sState) {
		this.sState = sState;
	}
	public String getsCountry() {
		return sCountry;
	}
	public void setsCountry(String sCountry) {
		this.sCountry = sCountry;
	}
	public int getsPIN() {
		return sPIN;
	}
	public void setsPIN(int sPIN) {
		this.sPIN = sPIN;
	}
	public String getsLandmark() {
		return sLandmark;
	}
	public void setsLandmark(String sLandmark) {
		this.sLandmark = sLandmark;
	}
	
	
}
