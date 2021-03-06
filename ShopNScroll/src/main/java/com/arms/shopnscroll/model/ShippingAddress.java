package com.arms.shopnscroll.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@Entity
public class ShippingAddress implements Serializable
{
	private static final long serialVersionUID = 1L;

	@Id
	@Expose
	private int shipId;
	
	@Expose
	int userId;
	
	@Expose
	private String sName;
	
	@Expose
	private String sPrefix;
	
	@Expose
	private String sLandmark;
	
	@Expose
	private String sStreet;
	
	@Expose
	private String sCity;
	
	@Expose
	private String sState;
	
	@Expose
	private String sCountry;
	
	@Expose
	private int sPIN;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public int getShipId() {
		return shipId;
	}
	public void setShipId(int shipId) {
		this.shipId = shipId;
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
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
